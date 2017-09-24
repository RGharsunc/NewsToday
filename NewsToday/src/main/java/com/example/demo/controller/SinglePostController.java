package com.example.demo.controller;

import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vardan on 19.09.2017.
 */
@Controller
public class SinglePostController {
    @Autowired
    PostService postService;

    @RequestMapping(value = "/post/{id}")
    public String toSinglePost(@PathVariable("id") long id, ModelMap modelMap) {

        postService.addPopularIndexOfPost(id);

        modelMap.addAttribute("sliderPosts", postService.getPostsByDate());
        modelMap.addAttribute("postById", postService.getPostById(id));
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex().subList(0, 4));
        modelMap.addAttribute("sameCategoryPosts", postService.getSameCategoryPosts(id).subList(0,3));


        return "single_page";
    }


}
