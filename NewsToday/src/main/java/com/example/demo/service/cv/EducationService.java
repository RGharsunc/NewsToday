package com.example.demo.service.cv;

import com.example.demo.entity.cv.Education;
import com.example.demo.repositoriy.cv.EducationRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 18.10.2017.
 */

@Service
public class EducationService {

    @Autowired
    private EducationRep educationRep;

    public void addEducation(Education education){
        educationRep.save(education);
    }


    public List<Education> getListOfEducation(){
        return educationRep.findAll();
    }

}
