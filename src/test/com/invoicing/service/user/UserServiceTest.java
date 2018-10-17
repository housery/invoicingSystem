package com.invoicing.service.user;

import com.invoicing.pojo.User;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

//告诉spring容器运行在虚拟机中
@RunWith(SpringJUnit4ClassRunner.class)
//若当前配置文件名=当前测试类名-context.xml 就可以在当前目录中查找@ContextConfiguration()
@ContextConfiguration(locations = {"classpath:applicationContext-mybatis.xml"})
public class UserServiceTest {
    private Logger logger = Logger.getLogger(UserServiceTest.class);
    @Autowired
    private UserService userService;

    @Test
    public void getUser() {
        User user = new User();
        user.setUserName("zs");
        user.setPassword("111");
        userService.getUser(user);
    }
}