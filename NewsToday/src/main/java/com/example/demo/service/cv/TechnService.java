package com.example.demo.service.cv;

import com.example.demo.entity.cv.Technologies;
import com.example.demo.repositoriy.cv.TechnRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 19.10.2017.
 */

@Service
public class TechnService {

    @Autowired
    private TechnRep technRep;


    public List<Technologies> getTechnList(){
        return technRep.findAll();
    }


    public void addTechn(Technologies techn){
        technRep.save(techn);
    }



}


