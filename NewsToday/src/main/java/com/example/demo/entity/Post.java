package com.example.demo.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Vardan on 18.09.2017.
 */
@Entity
@Table(name = "post")
public class Post {

    private long id;
    private String title;
    private String shortTitle;
    private String description;
    private Date createdDate;
    private long popIndex;
    private Category categoryByCategoryId;
    private String pic;
    private String region;


    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "short_title")
    public String getShortTitle() {
        return shortTitle;
    }

    public void setShortTitle(String shortTitle) {
        this.shortTitle = shortTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "date")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Column(name = "pop_index")
    public long getPopIndex() {
        return popIndex;
    }

    public void setPopIndex(long popIndex) {
        this.popIndex = popIndex;
    }

    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
    public Category getCategoryByCategoryId() {
        return categoryByCategoryId;
    }

    public void setCategoryByCategoryId(Category categoryByCategoryId) {
        this.categoryByCategoryId = categoryByCategoryId;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }


}
