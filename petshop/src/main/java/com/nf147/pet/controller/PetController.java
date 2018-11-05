package com.nf147.pet.controller;

import com.nf147.pet.dao.PetMapper;
import com.nf147.pet.entity.Pet;
import com.sun.mail.imap.protocol.ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

//宠物
@Controller
@RequestMapping("/pet")
public class PetController {

    @Autowired
    private PetMapper petMapper;

    @RequestMapping(method = RequestMethod.GET)
    public  String pet(Model model){
        List<Pet> list=petMapper.selectAll();
        model.addAttribute("list",list);
        return "main";
    }
    @RequestMapping(value = "/del/{id}")
    public  String del(@PathVariable("id")int id){
       petMapper.deleteByPrimaryKey(id);
        return "redirect:/pet";
    }

}
