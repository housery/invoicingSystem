package com.invoicing.service.user;

import com.invoicing.dao.user.UserMapper;
import com.invoicing.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserMapper userMapper;

    public User getUser(User user){
        return userMapper.getUser(user);
    }
}
