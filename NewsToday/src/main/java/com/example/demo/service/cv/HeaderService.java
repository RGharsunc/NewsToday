package com.example.demo.service.cv;

import com.example.demo.entity.cv.Header;
import com.example.demo.repositoriy.cv.HeaderRep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * Created by Vardan on 18.10.2017.
 */

@Service
public class HeaderService {

    @Autowired
    private HeaderRep headerRep;


    public void addHeader(Header header) {
        Header head = headerRep.findAll().get(0);
        if (!header.getEmail().isEmpty()) {
            head.setEmail(header.getEmail());
        }

        if (!header.getAddress().isEmpty()) {
            head.setAddress(header.getAddress());
        }

        if (!header.getGithub().isEmpty()) {
            head.setGithub(header.getGithub());
        }

        if (!header.getPhone().isEmpty()) {
            head.setPhone(header.getPhone());
        }

        if (!header.getPic().endsWith("_")) {
            head.setPic(header.getPic());
        }

        headerRep.save(head);
    }

    public String fileUploadPartner(MultipartFile img) throws IOException {
        //file upload
        File dir = new File("D:\\java\\NewsToday\\CV");
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


    public Header getHeader() {
        if (headerRep.findAll().isEmpty()) {
            return null;
        }
        Header header = headerRep.findAll().get(0);
        return header;
    }

}
