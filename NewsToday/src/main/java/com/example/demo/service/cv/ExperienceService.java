package com.example.demo.service.cv;

import com.example.demo.entity.cv.Experience;
import com.example.demo.repositoriy.cv.ExperienceRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 18.10.2017.
 */

@Service
public class ExperienceService {

    @Autowired
    private ExperienceRep experienceRep;

    public void addExperience(Experience experience) {
        experienceRep.save(experience);
    }

    public List<Experience> getListOfExperience(){
        return experienceRep.findAll();
    }
}
