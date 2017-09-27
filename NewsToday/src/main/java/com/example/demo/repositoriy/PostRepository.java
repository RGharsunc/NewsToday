package com.example.demo.repositoriy;

import com.example.demo.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 18.09.2017.
 */
public interface PostRepository extends JpaRepository<Post, Long> {


    List<Post> findByCreatedDateAfterOrderByCreatedDateDesc(Date dayBefore);

    List<Post> findByOrderByCreatedDateDesc();

    List<Post> findByCategoryByCategoryIdIdOrderByCreatedDateDesc(long id);

    List<Post> findByOrderByPopIndex();

    List<Post> findByOrderByPositIndex();

    Post getByPositIndex(long positIndex);

    List<Post> findAllByCategoryByCategoryIdName(String name);

    List<Post> findAllByCategoryByCategoryIdId(long id);

    List<Post> findAllByCategoryByCategoryIdIdOrderByPopIndexDesc(long id);

    Post findByPositIndexInCategoryAndCategoryByCategoryIdId(long positIndexInCategory, long categoryId);

}
