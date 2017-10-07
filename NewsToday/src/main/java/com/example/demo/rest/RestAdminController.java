package com.example.demo.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Vardan on 04.10.2017.
 */

@RestController
public class RestAdminController {

    @RequestMapping("/hello")
    public String sayHallo(){
        return "HellO";
    }

}
