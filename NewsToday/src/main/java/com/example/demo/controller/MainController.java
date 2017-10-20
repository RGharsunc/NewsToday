package com.example.demo.controller;

import com.example.demo.entity.Role;
import com.example.demo.entity.User;
import com.example.demo.service.CategoryService;
import com.example.demo.service.PartnerService;
import com.example.demo.service.PostService;
import com.example.demo.service.UserService;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

/**
 * Created by Vardan on 18.09.2017.
 */
@Controller
public class MainController {



    @Autowired
    private UserService userService;


    @RequestMapping(value = "/")
    public String main() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/errors")
    public String toErrors() {
        return "errors";
    }

    @RequestMapping(value = "/log")
    public String toLogin() {
        return "login";
    }

  @RequestMapping(value = "/reg")
    public String toRegister() {
        return "/register";
    }



    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {

        return "login";
    }



    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/user/register")
    public String registerUser(@Valid @ModelAttribute("user") User user,
                               BindingResult bindingResult,
                               ModelMap modelMap) {
        if (bindingResult.hasErrors()){
            modelMap.addAttribute("errMsg", bindingResult.getFieldError().getDefaultMessage());
                    return "errors";
        }
        if (userService.getUserByEmail(user.getEmail()) != null) {
            modelMap.addAttribute("errMsg", "Profile with your email is already exists, login please");
            return "login";

        } else {
            user.setRole(Role.USER);
            userService.addUser(user);
            modelMap.addAttribute("errMsg", "Your profile is registered, login please");
            return "login";
        }


    }


}
