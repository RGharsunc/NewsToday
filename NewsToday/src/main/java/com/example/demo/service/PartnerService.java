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
import java.util.List;

/**
 * Created by Vardan on 24.09.2017.
 */

@Service
public class PartnerService {

    @Autowired
    private PartnerRepository partnerRepository;

    public List<Partner> getPartners() {
        return partnerRepository.findAll();
    }

    public void addPartner(Partner partner) {
        partnerRepository.save(partner);
    }

    public String fileUploadPartner(MultipartFile img) throws IOException {
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
        return image;
    }


    public void setPartnerPosition(long id, String position) {
        if (partnerRepository.findAllByPositContains(position) != null) {
            for (Partner partner : partnerRepository.findAllByPositContains(position)) {
               partner.setPosit(partner.getPosit().replaceAll(position,""));
                partnerRepository.save(partner);
            }
        }
        Partner partner = partnerRepository.findOne(id);
        partner.setPosit(partner.getPosit()+position);
        partnerRepository.save(partner);
    }

    public Partner getPartnerByPosition(String position) {
        if (partnerRepository.findByPositContains(position) != null) {
            return partnerRepository.findByPositContains(position);
        } else {
            return null;
        }
    }
}
