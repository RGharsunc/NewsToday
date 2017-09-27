package com.example.demo.controller;

import com.example.demo.entity.Partner;
import com.example.demo.entity.Post;
import com.example.demo.service.CategoryService;
import com.example.demo.service.PartnerService;
import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

/**
 * Created by Vardan on 18.09.2017.
 */
@Controller
public class AdminController {

    @Autowired
    private PostService postService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private PartnerService partnerService;

    @Value("${NewsToday.fileDownload.path}")
    private String downloadPath;

    @Value("${NewsToday.partner.fileDownload.path}")
    private String downloadPartnerPath;

    @RequestMapping(value = "/admin")
    public String toAdminJSP(ModelMap modelMap) {

        modelMap.addAttribute("partners", partnerService.getPartners());
        modelMap.addAttribute("sliderPosts", postService.getPostsOrderedByDate());
        modelMap.addAttribute("categories", categoryService.getListOfCatergories());
        modelMap.addAttribute("posts", postService.getListOfPosts());
        modelMap.addAttribute("popularPosts", postService.getSortedListByPopIndex());

        modelMap.addAttribute("postsForDatePolitic",
                postService.getPostsByCategoryIdOrderedByDate(categoryService.getCategoryByName("politic").getId()));
        modelMap.addAttribute("postsForDateSport",
                postService.getPostsByCategoryIdOrderedByDate(categoryService.getCategoryByName("sport").getId()));
        modelMap.addAttribute("postsForDateLive_Stile",
                postService.getPostsByCategoryIdOrderedByDate(categoryService.getCategoryByName("live_stile").getId()));
        modelMap.addAttribute("postsForDateBusiness",
                postService.getPostsByCategoryIdOrderedByDate(categoryService.getCategoryByName("business").getId()));

        return "admin";
    }

    @RequestMapping(value = "/admin/post/add", method = RequestMethod.POST)
    public String addPost(@ModelAttribute("newPost") Post post,
                          @RequestParam("img") MultipartFile image) throws IOException {
        post.setPic(postService.fileUploadPost(image));
        post.setCreatedDate(new Date());
        postService.addPost(post);
        return "redirect:/admin";
    }

    @ResponseBody
    @RequestMapping(value = "/getImage", method = RequestMethod.GET)
    public byte[] getPostImageAsByteArray(@RequestParam("filename") String filename) throws Exception {
        InputStream in = new FileInputStream(downloadPath + filename);
        return org.apache.commons.io.IOUtils.toByteArray(in);
    }


    @RequestMapping(value = "/admin/post/set/main-position")
    public String setMainPosts(@RequestParam("id1") long id1,
                               @RequestParam("id2") long id2,
                               @RequestParam("id3") long id3,
                               @RequestParam("id4") long id4) {

        postService.addPostsToMainPosition(id1, id2, id3, id4);
        return "redirect:/admin";

    }

    @RequestMapping(value = "/admin/category/set/positions")
    public String setCategoryPosition(@RequestParam("category1") long id1,
                                      @RequestParam("category2") long id2,
                                      @RequestParam("category3") long id3,
                                      @RequestParam("category4") long id4) {

        categoryService.setCategoryPosition(id1, id2, id3, id4);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/post/set/positions/in/business")
    public String setCategoryPositionInBusinessArea(@RequestParam("post1") long id1,
                                                    @RequestParam("post2") long id2,
                                                    @RequestParam("post3") long id3,
                                                    @RequestParam("post4") long id4) {

        postService.setPositionInCategory(7, id1, id2, id3, id4);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/post/set/positions/in/politic")
    public String setCategoryPositionInPoliticArea(@RequestParam("post1") long id1,
                                                   @RequestParam("post2") long id2,
                                                   @RequestParam("post3") long id3,
                                                   @RequestParam("post4") long id4) {

        postService.setPositionInCategory(2, id1, id2, id3, id4);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/post/set/positions/in/sport")
    public String setCategoryPositionInSportArea(@RequestParam("post1") long id1,
                                                 @RequestParam("post2") long id2,
                                                 @RequestParam("post3") long id3,
                                                 @RequestParam("post4") long id4) {

        postService.setPositionInCategory(3, id1, id2, id3, id4);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/post/set/positions/in/live_stile")
    public String setCategoryPositionInLive_StileArea(@RequestParam("post1") long id1,
                                                      @RequestParam("post2") long id2,
                                                      @RequestParam("post3") long id3,
                                                      @RequestParam("post4") long id4) {

        postService.setPositionInCategory(4, id1, id2, id3, id4);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/partner/add", method = RequestMethod.POST)
    public String addPost(@ModelAttribute("newPartner") Partner partner,
                          @RequestParam("img") MultipartFile image) throws IOException {
        partner.setPic(partnerService.fileUploadPartner(image));
        partnerService.addPartner(partner);
        return "redirect:/admin";
    }

    @ResponseBody
    @RequestMapping(value = "/getPartnerImage", method = RequestMethod.GET)
    public byte[] getPartnerImageAsByteArray(@RequestParam("filename") String filename) throws Exception {
        InputStream in = new FileInputStream(downloadPartnerPath + filename);
        return org.apache.commons.io.IOUtils.toByteArray(in);
    }

    @RequestMapping(value = "/admin/partner/position/top")
    public String setPartnerPositionTop(@RequestParam("partn") long id) {
        partnerService.setPartnerPosition(id, "a");
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/partner/position/right")
    public String setPartnerPositionRight(@RequestParam("partn") long id) {
        partnerService.setPartnerPosition(id, "b");
        return "redirect:/admin";
    }


    @RequestMapping(value = "/admin/partner/position/bottom")
    public String setPartnerPositionBottom(@RequestParam("partn") long id) {
        partnerService.setPartnerPosition(id, "c");
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/partner/position/left")
    public String setPartnerPositionLeft(@RequestParam("partn") long id) {
        partnerService.setPartnerPosition(id, "d");
        return "redirect:/admin";
    }


}

