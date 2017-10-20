package com.example.demo.service.cv;

import com.example.demo.entity.cv.Languages;
import com.example.demo.repositoriy.cv.LanguagesRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 18.10.2017.
 */

@Service
public class LanguagesService {

    @Autowired
    private LanguagesRep languagesRep;

    public void addLanguage(Languages language){
        languagesRep.save(language);
    }


    public List<Languages> getListOfLanguages(){
        return languagesRep.findAll();
    }

}
