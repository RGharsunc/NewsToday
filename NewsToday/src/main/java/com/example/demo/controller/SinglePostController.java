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
 * Created by Vardan on 19.09.2017.
 */
@Controller
public class SinglePostController {
    @Autowired
    private PostService postService;
    @Autowired
    private PartnerService partnerService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/post/{id}")
    public String toSinglePost(@PathVariable("id") long id, ModelMap modelMap) {

        postService.addPopularIndexOfPost(id);
        modelMap.addAttribute("topPartner", partnerService.getPartnerByPosition("a"));
        modelMap.addAttribute("rightPartner", partnerService.getPartnerByPosition("b"));
        modelMap.addAttribute("bottomPartner", partnerService.getPartnerByPosition("c"));
        modelMap.addAttribute("leftPartner", partnerService.getPartnerByPosition("d"));
        modelMap.addAttribute("categoryList", categoryService.getListOfCatergories());
        modelMap.addAttribute("sliderPosts", postService.getPostsOrderedByDate());
        modelMap.addAttribute("postById", postService.getPostById(id));
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex().subList(0, 4));
        modelMap.addAttribute("sameCategoryPosts", postService.getSameCategoryPosts(id).subList(0, 3));


        return "single_page";
    }


}
