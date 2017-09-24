package com.example.demo.service;

import com.example.demo.entity.Partner;
import com.example.demo.repositoriy.PartnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by Vardan on 24.09.2017.
 */

@Service
public class PartnerService {

    @Autowired
    PartnerRepository partnerRepository;


    public void addPartner(Partner partner) {
        partnerRepository.save(partner);
    }

    public Partner fileUploadPartner(Partner partner, MultipartFile img) throws IOException {
        //file upload
        File dir = new File("D:\\java\\NewsToday\\Partner");
        if (!dir.exists()) {
            dir.mkdir();
        }
        //create the file on server
        String image = System.currentTimeMillis() + "_" + img.getOriginalFilename();
        File serverFile = new File(dir.getAbsolutePath() + "\\" + image);
        BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(serverFile));
        stream1.write(img.getBytes());
        stream1.close();
        partner.setPic(image);
        return partner;
    }
}
