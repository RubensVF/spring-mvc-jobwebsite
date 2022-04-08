package com.ruben.springMvc.controllers;

import com.ruben.springMvc.model.Job;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jobs")
public class JobController {
    
    @GetMapping("/newjob")
    public String newJob(@ModelAttribute Job job){
        return "job-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Job job){
        System.out.println(job);
        return "redirect:/";
    }
}
