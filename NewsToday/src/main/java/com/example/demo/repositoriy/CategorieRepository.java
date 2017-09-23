package com.example.demo.repositoriy;

import com.example.demo.entity.Category;

import org.springframework.data.jpa.repository.JpaRepository;



/**
 * Created by Vardan on 19.09.2017.
 */

public interface CategorieRepository extends JpaRepository<Category,Long>  {


    Category findByPosition(long id);
    Category findCategoryByName(String name);
}
