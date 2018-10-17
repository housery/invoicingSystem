package com.invoicing.controller;

import com.invoicing.pojo.User;
import com.invoicing.service.user.UserService;
import com.invoicing.tools.Constants;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    private Logger logger = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/doLogin.html", method = RequestMethod.POST)
    @ResponseBody
    public String doLogin(Model model,HttpSession session,
                          @RequestParam String userName, @RequestParam String password){
        String result = "";
        User loginUser = new User();
        loginUser.setUserName(userName);
        loginUser.setPassword(password);
        User user = userService.getUser(loginUser);
        if (user != null){
            session.setAttribute(Constants.USER_SESSION, user);
            return "<script type='text/javascript'>location.href='admin/main'</script>";
        } else {
            result="<script type='text/javascript'>alert('登陆失败，用户名或密码错误！');location.href='login'</script>";
        }
        return result;
    }

    @RequestMapping("/admin/main")
    public String main(){
        return "main";
    }

    @RequestMapping(value="/logout")
    public String logout(HttpSession session){
        //清除session
        session.removeAttribute(Constants.USER_SESSION);
        return "login";
    }
}
