package com.example.demo.service;

import com.example.demo.entity.Category;
import com.example.demo.repositoriy.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 19.09.2017.
 */
@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categorieRepository;

    public List<Category> getListOfCatergories() {
        return categorieRepository.findAll();
    }



    public Category getCategoryByName(String name) {
        return categorieRepository.findCategoryByName(name);
    }

    private void setIndexForCategoryById(long id, long index) {

        if (categorieRepository.findByPosition(index) != null) {
            Category category1 = categorieRepository.findByPosition(index);
            category1.setPosition(10);
            categorieRepository.save(category1);
        }
        Category category = categorieRepository.findOne(id);
        category.setPosition(index);
        categorieRepository.save(category);


    }

    public void setCategoryPosition(long id1,
                                    long id2,
                                    long id3,
                                    long id4) {
        if (id1 != 0) {
            setIndexForCategoryById(id1, 1);
        }
        if (id2 != 0) {
            setIndexForCategoryById(id2, 2);
        }
        if (id3 != 0) {
            setIndexForCategoryById(id3, 3);
        }
        if (id4 != 0) {
            setIndexForCategoryById(id4, 4);
        }

    }

    private List<Category> getSortedCategoryList() {
        return categorieRepository.findByOrderByPosition();
    }


    public List<Category> getCategoryListByPositIndex() {
        return getSortedCategoryList();
    }


}
