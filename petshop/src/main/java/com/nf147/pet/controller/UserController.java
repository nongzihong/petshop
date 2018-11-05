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


    @RequestMapping(method = RequestMethod.POST)
    public String User(Model model,User user){
        List<User> getUser= userMapper.selectAll();
        for (int i = 0; i < getUser.size(); i++) {
            if(getUser.get(i).getUsername().equals(user.getUsername())&&getUser.get(i).getPassword().equals(user.getPassword())){
                return "redirect:/pet";
            }
            break;
        }
        return "login";
    }
}
