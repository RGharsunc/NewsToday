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
    private PostRepository postRepository;





    public String fileUploadPost(MultipartFile img) throws IOException {
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

        return image;
    }


    public List<Post> getListOfPosts() {
        return postRepository.findByOrderByCreatedDateDesc();
    }


    public List<Post> getListOfPostsByCategoryId(long id) {
        List<Post> posts1 = postRepository.findAllByCategoryByCategoryIdId(id);
        List<Post> posts2 = new ArrayList<>(4);
        for (int i = 1; i <= 4; i++) {
            for (Post post : posts1) {
                if (post.getPositIndexInCategory() == i) {
                    posts2.add(post);
                }
            }
        }
        return posts2;
    }

    public List<Post> getListOfPostsByCategoryForPostListForLastMonth(long id){
        int i = -30;
        List<Post> postList = new ArrayList<>();

        while (postList.size()<4) {
            postList = postRepository.findAllByCategoryByCategoryIdIdAndCreatedDateAfterOrderByCreatedDateDesc(id,getDayBeforeDate(i));
            i--;
        }
        return postList;    }

    private Date getDayBeforeDate(int i) {
        Date date;
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, i);
        date = cal.getTime();
        return date;
    }


    public List<Post> getLastMonthPosts() {
         int i = -30;
        List<Post> postList = new ArrayList<>();

        while (postList.size() <+10) {
            postList = postRepository.findByCreatedDateAfterOrderByCreatedDateDesc(getDayBeforeDate(i));
            i--;
        }
        return postList;
    }

    public List<Post> getPostsOrderedByDate() {
        return postRepository.findByOrderByCreatedDateDesc().subList(0, 7);
    }


    public List<Post> getPostsByCategoryIdOrderedByDate(long id) {

        List<Post> postList = postRepository.findByCategoryByCategoryIdIdOrderByCreatedDateDesc(id);
        if (postList.size() >= 10) {
            return postList.subList(0, 10);

        } else {
            return postList;
        }
    }


    public Post getPostById(long id) {
        return postRepository.findOne(id);
    }


    public void addPost(Post post) {
        postRepository.save(post);
    }


    private void setIndexForPostById(long id, long index) {

        if (postRepository.getByPositIndex(index) != null) {
            Post post1 = postRepository.getByPositIndex(index);
            post1.setPositIndex(0);
            postRepository.save(post1);
        }
        Post post = postRepository.findOne(id);
        post.setPositIndex(index);
        postRepository.save(post);
    }


    public void addPostsToMainPosition(long id1,
                                       long id2,
                                       long id3,
                                       long id4) {
        if (id1 != 0) {
            setIndexForPostById(id1, 4);
        }
        if (id2 != 0) {
            setIndexForPostById(id2, 3);
        }
        if (id3 != 0) {
            setIndexForPostById(id3, 2);
        }
        if (id4 != 0) {
            setIndexForPostById(id4, 1);
        }
    }


    private List<Post> getSortedPostList() {
        return postRepository.findByOrderByPositIndexDesc();
    }


    public List<Post> getSortedListByPopIndex() {
        return postRepository.findByOrderByPopIndex();
    }


    public List<Post> getPostListByPositIndex() {
        List<Post> posts1 = getSortedPostList();
        List<Post> posts2 = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            posts2.add(posts1.get(i));
        }
        return posts2;
    }


    private void setPositIndexForPostInCategory(long id, long index, long categoryId) {

        if (postRepository.findByPositIndexInCategoryAndCategoryByCategoryIdId(index, categoryId) != null) {
            Post post = postRepository.findByPositIndexInCategoryAndCategoryByCategoryIdId(index, categoryId);
            post.setPositIndexInCategory(10);
            postRepository.save(post);
        }
        Post post = postRepository.findOne(id);
        post.setPositIndexInCategory(index);
        postRepository.save(post);
    }


    public void setPositionInCategory(long categoryId,
                                      long id1,
                                      long id2,
                                      long id3,
                                      long id4) {
        if (id1 != 0) {
            setPositIndexForPostInCategory(id1, 1, categoryId);
        }
        if (id2 != 0) {
            setPositIndexForPostInCategory(id2, 2, categoryId);
        }
        if (id3 != 0) {
            setPositIndexForPostInCategory(id3, 3, categoryId);
        }
        if (id4 != 0) {
            setPositIndexForPostInCategory(id4, 4, categoryId);
        }

    }


    public void addPopularIndexOfPost(long id) {
        Post post = postRepository.findOne(id);
        long popIndex = post.getPopIndex();
        post.setPopIndex(popIndex + 1L);
        postRepository.save(post);

    }

    public List<Post> getSameCategoryPosts(long postId) {
        Post post = getPostById(postId);


        long categoryId = post.getCategoryByCategoryId().getId();

        return postRepository.findAllByCategoryByCategoryIdIdOrderByPopIndexDesc(categoryId);

    }


}
