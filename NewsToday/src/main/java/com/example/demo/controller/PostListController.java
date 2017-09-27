package com.example.demo.controller;

import com.example.demo.service.CategoryService;
import com.example.demo.service.PartnerService;
import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vardan on 27.09.2017.
 */


@Controller
public class PostListController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private PostService postService;
    @Autowired
    private PartnerService partnerService;



    @RequestMapping(value = "/postlist")
    public String toPostList(ModelMap modelMap) {
        modelMap.addAttribute("sliderPosts", postService.getPostsOrderedByDate());

        modelMap.addAttribute("topPartner", partnerService.getPartnerByPosition("a"));
        modelMap.addAttribute("rightPartner", partnerService.getPartnerByPosition("b"));
        modelMap.addAttribute("bottomPartner", partnerService.getPartnerByPosition("c"));
        modelMap.addAttribute("leftPartner", partnerService.getPartnerByPosition("d"));
        modelMap.addAttribute("posts", postService.getLastMonthPosts());
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex().subList(0, 5));
        modelMap.addAttribute("categoryList", categoryService.getListOfCatergories());

        return "postlist";
    }


    @RequestMapping(value = "/postlist/by/category/{id}")
    public String toPostListByCategoryId(@PathVariable ("id") long id, ModelMap modelMap) {
        modelMap.addAttribute("sliderPosts", postService.getPostsOrderedByDate());

        modelMap.addAttribute("topPartner", partnerService.getPartnerByPosition("a"));
        modelMap.addAttribute("rightPartner", partnerService.getPartnerByPosition("b"));
        modelMap.addAttribute("bottomPartner", partnerService.getPartnerByPosition("c"));
        modelMap.addAttribute("leftPartner", partnerService.getPartnerByPosition("d"));
        modelMap.addAttribute("posts", postService.getListOfPostsByCategoryId(id));
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex().subList(0, 5));
        modelMap.addAttribute("categoryList", categoryService.getListOfCatergories());

        return "postlist";
    }




}
