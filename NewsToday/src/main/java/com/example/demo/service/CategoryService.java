package com.example.demo.service;

import com.example.demo.entity.Category;
import com.example.demo.repositoriy.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 19.09.2017.
 */
@Service
public class CategoryService {
    @Autowired
    CategorieRepository categorieRepository;

    public List<Category> getListOfCatergories(){
        return categorieRepository.findAll();
    }

}
