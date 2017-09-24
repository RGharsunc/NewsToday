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

        modelMap.addAttribute("popularPostsPhotos", postService.getSortedListByPopIndex().subList(5,14));
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex().subList(0,5));

        modelMap.addAttribute("categoryList", categoryService.getListOfCatergories());

        modelMap.addAttribute("sliderPosts", postService.getPostsByDate());

        modelMap.addAttribute("mainPosts", postService.getPostListByPositIndex());

        modelMap.addAttribute("sortedCategories", categoryService.getCategoryListByPositIndex());

        modelMap.addAttribute("politicPosts", postService.
                getListOfPostsByCategoryId(categoryService.getCategoryByName("politic").getId()));
        modelMap.addAttribute("sportPosts", postService.
                getListOfPostsByCategoryId(categoryService.getCategoryByName("sport").getId()));
        modelMap.addAttribute("live_stilePosts", postService.
                getListOfPostsByCategoryId(categoryService.getCategoryByName("live_stile").getId()));
        modelMap.addAttribute("businessPosts", postService.
                getListOfPostsByCategoryId(categoryService.getCategoryByName("business").getId()));
        return "index";
    }

}
