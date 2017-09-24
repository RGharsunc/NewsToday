package com.example.demo.controller;

import com.example.demo.entity.Category;
import com.example.demo.service.CategoryService;
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
    CategoryService categoryService;
    @Autowired
    PostService postService;


    @RequestMapping(value = "/")
    public String main() {
        return "redirect:/home";
    }



    @RequestMapping(value = "/contact")
    public String toContactJSP() {
        return "contact";
    }

    @RequestMapping(value = "/admin")
    public String toAdminJSP(ModelMap modelMap) {

        modelMap.addAttribute("sliderPosts", postService.getPostsByDate());
        modelMap.addAttribute("categories", categoryService.getListOfCatergories());
        modelMap.addAttribute("posts", postService.getListOfPosts());
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex());

        modelMap.addAttribute("postsForDatePolitic",
                postService.getPostsByDateAndCategoryId(categoryService.getCategoryByName("politic").getId()));
        modelMap.addAttribute("postsForDateSport",
                postService.getPostsByDateAndCategoryId(categoryService.getCategoryByName("sport").getId()));
        modelMap.addAttribute("postsForDateLive_Stile",
                postService.getPostsByDateAndCategoryId(categoryService.getCategoryByName("live_stile").getId()));
        modelMap.addAttribute("postsForDateBusiness",
                postService.getPostsByDateAndCategoryId(categoryService.getCategoryByName("business").getId()));

        return "admin";
    }

}
