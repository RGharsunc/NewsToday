package com.example.demo.repositoriy;

import com.example.demo.entity.Partner;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Vardan on 24.09.2017.
 */
public interface PartnerRepository extends JpaRepository<Partner, Long> {

    List<Partner> findAllByPositContains(String a);

    Partner findByPositContains(String position);
}
