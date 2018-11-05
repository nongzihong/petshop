package com.nf147.pet.controller;

//订单

import com.nf147.pet.dao.ORderMapper;
import com.nf147.pet.entity.ORder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/ord")
public class OrderController {

    @Autowired
    private ORderMapper oRderMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String ord(Model model) {
        List<ORder> list = oRderMapper.selectAll();
        model.addAttribute("list", list);
        return null;
    }
}
