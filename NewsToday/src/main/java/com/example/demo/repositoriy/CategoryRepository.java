package com.example.demo.repositoriy;

import com.example.demo.entity.Category;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


/**
 * Created by Vardan on 19.09.2017.
 */

public interface CategoryRepository extends JpaRepository<Category, Long> {


    Category findByPosition(long id);

    Category findCategoryByName(String name);

    List<Category> findByOrderByPosition();
}
