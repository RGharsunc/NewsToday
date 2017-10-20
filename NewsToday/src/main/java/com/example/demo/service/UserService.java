package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.repositoriy.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Vardan on 09.10.2017.
 */

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public void addUser(User user) {
        String password = user.getPassword();
        String f = new BCryptPasswordEncoder().encode(password);

        user.setPassword(f);
        userRepository.save(user);
    }

    public void removeUserById(long id){
        userRepository.deleteById(id);
    }


    public List<User> getUserList(){
        return userRepository.findAll();
    }
}
