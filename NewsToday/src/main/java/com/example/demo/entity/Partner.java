package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * Created by Vardan on 24.09.2017.
 */

@Entity
@Table(name = "partner")
public class Partner {

    private long id;

    @NotNull
    private String name;

    @NotNull
    private String title;

    @NotNull
    private String url;

    private String videoUrl;

    private String description;

//    @NotNull
    private String pic;

    private String posit;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "u_r_l")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    @Column(name = "video_url")
    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPosit() {
        return posit;
    }

    public void setPosit(String posit) {
        this.posit = posit;
    }


    @Override
    public String toString() {
        return "Partner{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", url='" + url + '\'' +
                ", videoUrl='" + videoUrl + '\'' +
                ", description='" + description + '\'' +
                ", pic='" + pic + '\'' +
                ", posit='" + posit + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Partner partner = (Partner) o;

        if (id != partner.id) return false;
        if (name != null ? !name.equals(partner.name) : partner.name != null) return false;
        if (title != null ? !title.equals(partner.title) : partner.title != null) return false;
        if (url != null ? !url.equals(partner.url) : partner.url != null) return false;
        if (videoUrl != null ? !videoUrl.equals(partner.videoUrl) : partner.videoUrl != null) return false;
        if (description != null ? !description.equals(partner.description) : partner.description != null) return false;
        if (pic != null ? !pic.equals(partner.pic) : partner.pic != null) return false;
        return posit != null ? posit.equals(partner.posit) : partner.posit == null;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (videoUrl != null ? videoUrl.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (pic != null ? pic.hashCode() : 0);
        result = 31 * result + (posit != null ? posit.hashCode() : 0);
        return result;
    }
}
