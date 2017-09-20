package com.example.demo.controller;

import com.example.demo.service.CategoryService;
import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vardan on 19.09.2017.
 */
@Controller
public class HomeController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    PostService postService;
    @RequestMapping(value = "/home")
    public String toIndexJSP(ModelMap modelMap) {
        modelMap.addAttribute("postList", postService.getListOfPosts());
        modelMap.addAttribute("categoryList", categoryService.getListOfCatergories());
        modelMap.addAttribute("sliderPosts", postService.getPostsForFirstSliderByDate());

        return "index";
    }

}
