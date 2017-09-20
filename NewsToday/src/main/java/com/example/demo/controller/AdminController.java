package com.example.demo.controller;

import com.example.demo.entity.Post;
import com.example.demo.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
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
    PostService postService;
    @Value("${NewsToday.fileDownload.path}")
    private String downloadPath;



    @ResponseBody
    @RequestMapping(value = "/getImage", method = RequestMethod.GET)
    public byte[] getImageAsByteArray(@RequestParam("filename") String filename) throws Exception {
        InputStream in = new FileInputStream(downloadPath + filename);
        return org.apache.commons.io.IOUtils.toByteArray(in);
    }


    @RequestMapping(value = "/admin/post/add", method = RequestMethod.POST)
    public String addPost(@ModelAttribute ("newPost") Post post,
                          @RequestParam ("img") MultipartFile image) throws IOException{
        Post postWithImage=postService.fileUpload(post,image);
        postWithImage.setCreatedDate(new Date());
        postWithImage.setShortTitle(postWithImage.getTitle().substring(0,50));
        postService.addPost(postWithImage);
        return "redirect:/admin";
    }


//    @RequestMapping(value = "/admin/product/add", method = RequestMethod.POST)
//    public String addProduct(@ModelAttribute("addProduct") Product product,
//                             @RequestParam("img") MultipartFile image
//    ) throws IOException {
//        Product productWithFile = productService.fileUpload(product, image);
//        productService.addProduct(productWithFile);
//        return "redirect:/admin";
//    }
}
