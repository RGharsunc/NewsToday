package com.example.demo.controller;

import com.example.demo.entity.cv.*;
import com.example.demo.service.cv.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Vardan on 18.10.2017.
 */

@Controller
public class CVController {

    @Autowired
    private HeaderService headerService;

    @Autowired
    private EducationService educationService;

    @Autowired
    private ExperienceService experienceService;

    @Autowired
    private SkillsService skillsService;

    @Autowired
    private LanguagesService languagesService;

    @Autowired
    private TechnService technService;

    @Value("${NewsToday.CV.fileDownload.path}")
    private String CV;




@RequestMapping(value = "/CVA")
    public String toCVAdmin() {

        return "CVA";
    }

    @ResponseBody
    @RequestMapping(value = "/getCVImage", method = RequestMethod.GET)
    public byte[] getMyPhotoAsByteArray(@RequestParam("filename") String filename) throws Exception {
        InputStream in = new FileInputStream(CV + filename);
        return org.apache.commons.io.IOUtils.toByteArray(in);
    }



    @RequestMapping(value = "cv/header/add")
    public String addCVHeader(@ModelAttribute("header") Header header,
                              @RequestParam("img") MultipartFile image) throws IOException{
        header.setPic(headerService.fileUploadPartner(image));
        headerService.addHeader(header);
        return "redirect:/CVA";
    }




    @RequestMapping(value = "cv/language/add")
    public String addLanguage(@ModelAttribute("languages") Languages language) {
        languagesService.addLanguage(language);
        return "redirect:/CVA";
    }

    @RequestMapping(value = "cv/skill/add")
    public String addSkill(@ModelAttribute("skill") Skills skills) {
        skillsService.addSkill(skills);
        return "redirect:/CVA";
    }


    @RequestMapping(value = "cv/experience/add")
    public String addExperience(@ModelAttribute("experience") Experience exp) {
        experienceService.addExperience(exp);
        return "redirect:/CVA";
    }

    @RequestMapping(value = "cv/education/add")
    public String addEducation(@ModelAttribute("education") Education education) {
        educationService.addEducation(education);
        return "redirect:/CVA";
    }

    @RequestMapping(value = "cv/techn/add")
    public String addTechnologies(@ModelAttribute ("techn") Technologies techn){
        technService.addTechn(techn);
        return "redirect:/CVA";
    }


    @RequestMapping(value = "/cv")
    public String toCVJSP(ModelMap modelMap) {
        modelMap.addAttribute("skills", skillsService.getListOfSkills());
        modelMap.addAttribute("languages", languagesService.getListOfLanguages());
        modelMap.addAttribute("head", headerService.getHeader());
        modelMap.addAttribute("experience", experienceService.getListOfExperience());
        modelMap.addAttribute("technologies", technService.getTechnList());
        modelMap.addAttribute("education", educationService.getListOfEducation());
        return "cv";
    }

}
