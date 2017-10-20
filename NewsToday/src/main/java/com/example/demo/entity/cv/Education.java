package com.example.demo.entity.cv;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Vardan on 18.10.2017.
 */
@Entity
@Table(name = "education")
public class Education {

    private long id;
    private String duration;
    private String institute;
    private String prof;
    private String degree;


    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getProf() {
        return prof;
    }

    public void setProf(String prof) {
        this.prof = prof;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    @Override
    public String toString() {
        return "Education{" +
                "id=" + id +
                ", duration='" + duration + '\'' +
                ", institute='" + institute + '\'' +
                ", prof='" + prof + '\'' +
                ", degree='" + degree + '\'' +
                '}';
    }
}
