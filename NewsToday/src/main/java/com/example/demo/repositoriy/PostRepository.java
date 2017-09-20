package com.example.demo.repositoriy;

import com.example.demo.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 18.09.2017.
 */
public interface PostRepository extends JpaRepository<Post,Long> {
    List<Post> findByCreatedDateAfter(Date tenDaysBefore);
    List<Post> findAllByCreatedDateAfter(String str);
}
