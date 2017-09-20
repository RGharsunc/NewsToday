package com.example.demo.entity;

import javax.persistence.*;

/**
 * Created by Vardan on 18.09.2017.
 */
@Entity
@Table(name = "category")
public class Category {

    private long id;
    private String name;

    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
