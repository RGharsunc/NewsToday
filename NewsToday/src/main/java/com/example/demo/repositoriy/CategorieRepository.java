package com.example.demo.repositoriy;

import com.example.demo.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Vardan on 19.09.2017.
 */

public interface CategorieRepository extends JpaRepository<Category,Long>  {


}
