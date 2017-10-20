package com.example.demo.repositoriy;


import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Vardan on 25.07.2017.
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);
    @Transactional
    void deleteById(long id);


}
