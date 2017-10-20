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
    private CategoryRepository categoryRepository;

    public List<Category> getListOfCatergories() {
        return categoryRepository.findAll();
    }



    public Category getCategoryByName(String name) {
        return categoryRepository.findCategoryByName(name);
    }

    private void setIndexForCategoryById(long id, long index) {

        if (categoryRepository.findByPosition(index) != null) {
            Category category1 = categoryRepository.findByPosition(index);
            category1.setPosition(10);
            categoryRepository.save(category1);
        }
        Category category = categoryRepository.findOne(id);
        category.setPosition(index);
        categoryRepository.save(category);


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
        return categoryRepository.findByOrderByPosition();
    }


    public List<Category> getCategoryListByPositIndex() {
     List<Category> categories= getSortedCategoryList();
        return categories;
    }


}
