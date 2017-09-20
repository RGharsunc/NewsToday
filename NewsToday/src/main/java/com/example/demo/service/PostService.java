package com.example.demo.service;

import com.example.demo.entity.Post;
import com.example.demo.repositoriy.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 18.09.2017.
 */
@Service
public class PostService {

    @Autowired
    PostRepository postRepository;

    public Post fileUpload(Post post, MultipartFile img) throws IOException {
        //file upload
        File dir = new File("D:\\java\\NewsToday");
        if (!dir.exists()) {
            dir.mkdir();
        }
        //create the file on server
        String image = System.currentTimeMillis() + "_" + img.getOriginalFilename();
        File serverFile = new File(dir.getAbsolutePath() + "\\" + image);
        BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(serverFile));
        stream1.write(img.getBytes());
        stream1.close();
        post.setPic(image);
        return post;


    }

    public List<Post> getListOfPosts() {
        return postRepository.findAll();
    }

    private Date getDayBeforeDate() {
        Date date;
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        date = cal.getTime();
        return date;
    }

    public List<Post> getPostsForFirstSliderByDate() {
        List<Post> posts = new ArrayList<>();
        posts = postRepository.findByCreatedDateAfter(getDayBeforeDate());
        return posts;

    }

    public Post getPostById(long id){
        return  postRepository.findOne(id);
    }

    public void addPost(Post post){
        postRepository.save(post);
    }
//
//    public List<Post> addPostsToMainPosition(Post post1,
//                                             Post post2,
//                                             Post post4,
//                                             Post post5,
//                                             Post post6) {
//        List<Post> posts = new ArrayList<>();
//
//    }

}
