package com.example.demo.repositoriy.cv;

import com.example.demo.entity.cv.Header;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Vardan on 18.10.2017.
 */

public interface HeaderRep extends JpaRepository<Header, Long> {
}
