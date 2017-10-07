package com.example.demo.controller;

import com.example.demo.entity.Category;
import com.example.demo.service.CategoryService;
import com.example.demo.service.PartnerService;
import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vardan on 18.09.2017.
 */
@Controller
public class MainController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private PostService postService;
    @Autowired
    private PartnerService partnerService;


    @RequestMapping(value = "/")
    public String main() {
        return "redirect:/home";
    }


    @RequestMapping(value = "/contact")
    public String toContactJSP() {
        return "contact";
    }

//    @RequestMapping(value = "/admin")
//    public String ToAdmin() {
//        return "redirect:/ad";
//    }


}
