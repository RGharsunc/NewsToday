package com.example.demo.entity.cv;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Vardan on 19.10.2017.
 */

@Entity
@Table(name = "techn")
public class Technologies {

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

    @Override
    public String toString() {
        return "Technologies{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
