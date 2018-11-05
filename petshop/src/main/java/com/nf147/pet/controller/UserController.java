package com.nf147.pet.controller;

import com.nf147.pet.dao.UserMapper;
import com.nf147.pet.entity.User;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

// 用户
@Controller
@RequestMapping("/login")
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @RequestMapping(method = RequestMethod.GET)
    public  String  login(Model model){
        return "login";
    }


    @RequestMapping(value = "/reg",method = RequestMethod.GET)
    public String reg(Model model){
        return "register";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String User(Model model,String username,String password){
        User user=userMapper.user(username);
        if (user!=null){
            if(!password.equals(user.getPassword())){
                model.addAttribute("err","密码错误");
                return "login";
            }
        }else
        {
            model.addAttribute("err","用户不存在");
            return "login";
        }
        return "redirect:/pet";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(User user,Model model){
        int count=userMapper.insert(user);
        if(count>0){
            model.addAttribute("reg","注册成功");
            return "login";
        }
        return "register";
    }


}
