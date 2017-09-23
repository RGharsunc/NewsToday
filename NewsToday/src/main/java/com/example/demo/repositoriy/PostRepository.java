package com.example.demo.repositoriy;

import com.example.demo.entity.Category;
import com.example.demo.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 18.09.2017.
 */
public interface PostRepository extends JpaRepository<Post, Long> {
    List<Post> findByCreatedDateAfter(Date dayBefore);
    List<Post> findByCreatedDateAfterAndCategoryByCategoryIdId(Date dayBefore,long id);

    Post getByPositIndex(long positIndex);

    List<Post> findAllByCategoryByCategoryIdName(String name);

    List<Post> findAllByCategoryByCategoryIdId(long id);

    Post findByPositIndexInCategoryAndCategoryByCategoryIdId(long positIndexInCategory, long categoryId);
//     List<Post> findAllByPositIndexGreaterThan(long i);

}
