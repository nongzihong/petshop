package com.nf147.pet.controller;

import com.nf147.pet.dao.PetMapper;
import com.nf147.pet.entity.Pet;
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
    public String pet(Model model) {
        List<Pet> list = petMapper.selectAll();
        model.addAttribute("list", list);
        return "main";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        return "addpet";
    }

    @RequestMapping(value = "/query", method = RequestMethod.POST)
    public String query(Pet pet, Model model) {
        List<Pet> list = petMapper.query(pet);
        model.addAttribute("list", list);
        return "main";
    }


    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    public String del(@PathVariable("id") int id) {
        petMapper.deleteByPrimaryKey(id);
        return "redirect:/pet";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") int id, Model model) {
        Pet pet = petMapper.selectByPrimaryKey(id);
        model.addAttribute("pet", pet);
        return "petupdate";
    }

    @RequestMapping(value ="/rev",method = RequestMethod.POST)
    public String revamp(Pet pet,Model model) {
        System.out.println(pet);
        return null;
    }


}
