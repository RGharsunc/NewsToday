package com.example.demo.repositoriy.cv;

import com.example.demo.entity.cv.Technologies;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Vardan on 19.10.2017.
 */


public interface TechnRep  extends JpaRepository<Technologies,Long> {


}
