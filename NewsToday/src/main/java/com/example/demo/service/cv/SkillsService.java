package com.example.demo.service.cv;

import com.example.demo.entity.cv.Skills;
import com.example.demo.repositoriy.cv.SkillsRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 18.10.2017.
 */

@Service
public class SkillsService {


    @Autowired
    private SkillsRep skillsRep;

    public void addSkill(Skills skills){
        skillsRep.save(skills);
    }

    public List<Skills> getListOfSkills(){
        return skillsRep.findAll();
    }
}
