package com.example.demo.entity.cv;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Vardan on 18.10.2017.
 */

@Entity
@Table(name = "languages")
public class Languages {

    private long id;
    private String language;

    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "name")
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public String toString() {
        return "Languages{" +
                "id=" + id +
                ", language='" + language + '\'' +
                '}';
    }
}
