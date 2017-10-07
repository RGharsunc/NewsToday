package com.example.demo.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Created by Vardan on 18.09.2017.
 */
@Entity
@Table(name = "post")
public class Post {

    private long id;
    private String title;
    private String description;
    private Date createdDate;
    private long popIndex;
    private long positIndex = 0;
    private long positIndexInCategory = 10;
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

    @Column(name = "posit_index", nullable = false, columnDefinition = "int default 0")
    public long getPositIndex() {
        return positIndex;
    }

    public void setPositIndex(long positIndex) {
        this.positIndex = positIndex;
    }

    @Column(name = "posit_index_category", nullable = false, columnDefinition = "int default 10")

    public long getPositIndexInCategory() {
        return positIndexInCategory;
    }

    public void setPositIndexInCategory(long positIndexInCategory) {
        this.positIndexInCategory = positIndexInCategory;
    }

    @NotNull
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


    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", createdDate=" + createdDate +
                ", popIndex=" + popIndex +
                ", positIndex=" + positIndex +
                ", positIndexInCategory=" + positIndexInCategory +
                ", categoryByCategoryId=" + categoryByCategoryId +
                ", pic='" + pic + '\'' +
                ", region='" + region + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Post post = (Post) o;

        if (id != post.id) return false;
        if (popIndex != post.popIndex) return false;
        if (positIndex != post.positIndex) return false;
        if (positIndexInCategory != post.positIndexInCategory) return false;
        if (title != null ? !title.equals(post.title) : post.title != null) return false;
        if (description != null ? !description.equals(post.description) : post.description != null) return false;
        if (createdDate != null ? !createdDate.equals(post.createdDate) : post.createdDate != null) return false;
        if (categoryByCategoryId != null ? !categoryByCategoryId.equals(post.categoryByCategoryId) : post.categoryByCategoryId != null)
            return false;
        if (pic != null ? !pic.equals(post.pic) : post.pic != null) return false;
        return region != null ? region.equals(post.region) : post.region == null;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (createdDate != null ? createdDate.hashCode() : 0);
        result = 31 * result + (int) (popIndex ^ (popIndex >>> 32));
        result = 31 * result + (int) (positIndex ^ (positIndex >>> 32));
        result = 31 * result + (int) (positIndexInCategory ^ (positIndexInCategory >>> 32));
        result = 31 * result + (categoryByCategoryId != null ? categoryByCategoryId.hashCode() : 0);
        result = 31 * result + (pic != null ? pic.hashCode() : 0);
        result = 31 * result + (region != null ? region.hashCode() : 0);
        return result;
    }
}
