package com.example.demo.entity.cv;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Vardan on 18.10.2017.
 */
@Entity
@Table(name = "header")
public class Header {

    private long id;
    private String address;
    private String email;
    private String phone;
    private String github;
    private String pic;
    private String objective;

    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getAddress() {
        return address;
    }


    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }


    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getObjective() {
        return objective;
    }

    public void setObjective(String objective) {
        this.objective = objective;
    }

    @Override
    public String toString() {
        return "Header{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", github='" + github + '\'' +
                ", pic='" + pic + '\'' +
                ", objective='" + objective + '\'' +
                '}';
    }
}
