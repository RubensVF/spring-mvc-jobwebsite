package com.ruben.springMvc.controllers;

import java.util.List;

import com.ruben.springMvc.model.Job;
import com.ruben.springMvc.service.JobService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    
    @Autowired
    private JobService jService;


    @GetMapping("/")
    public String hello(Model model){
        List<Job> jobs = jService.findAll();
    
        model.addAttribute("jobs", jobs);
        return "index";
    }

    @GetMapping("/detail")
    public String mostrarDetalle(Model model){
        model.addAttribute("msg", "Hola mundo desde el model");
        return "detail";
    }

}
