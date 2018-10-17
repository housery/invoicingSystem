package com.invoicing.service.user;

import com.invoicing.pojo.Student;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import redis.clients.jedis.Jedis;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
//若当前配置文件名=当前测试类名-context.xml 就可以在当前目录中查找@ContextConfiguration()
@ContextConfiguration(locations = {"classpath:applicationContext-mybatis.xml"})
public class RedisTester {
    private Logger logger = Logger.getLogger(UserServiceTest.class);
    /**
     * Redis测试
     */
    @Test
    public void redisTest(){
        Jedis jedis = new Jedis("localhost",6379,100000);
        int i = 0;
        try {
            long start = System.currentTimeMillis();
            while (true){
                long end = System.currentTimeMillis();
                if (end - start >= 1000){ //大于1000毫秒时候
                    break;
                }
                i++;
                jedis.set("test" + i, i + " ");
            }
        } finally {
            jedis.close();
        }
        // 打印1秒内Redis的操作次数
        System.out.println("Redis每秒操作：" + i + "次");
    }

    /*spring配置Redis测试*/
    @Autowired
    private RedisTemplate redisTemplate;

    @Test
	public void redis(){
        Student student = new Student();
        student.setName("Redis");
        student.setAge(21);
        redisTemplate.opsForValue().set("student_1", student);
        Student student1 = (Student) redisTemplate.opsForValue().get("student_1");
        student1.service();
    }

}
