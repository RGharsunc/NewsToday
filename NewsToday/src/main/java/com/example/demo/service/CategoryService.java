package com.example.demo.service;

import com.example.demo.entity.Category;
import com.example.demo.repositoriy.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vardan on 19.09.2017.
 */
@Service
public class CategoryService {
    @Autowired
    private CategorieRepository categorieRepository;

    public List<Category> getListOfCatergories() {
        return categorieRepository.findAll();
    }


    public void addCategory(Category category) {
        categorieRepository.save(category);
    }

    public Category getCategoryByName(String name){
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
        return categorieRepository.findAll(sortByPositIndexAsc());
    }

    private Sort sortByPositIndexAsc() {
        return new Sort(Sort.Direction.ASC, "position");
    }

    public List<Category> getCategoryListByPositIndex() {
        List<Category> categories1 = getSortedCategoryList();
        List<Category> categories2 = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            categories2.add(categories1.get(i));
        }
        return categories2;
    }


}
