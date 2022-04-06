package com.ruben.springMvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    
    @GetMapping("/")
    public String hello(){
        return "index";
    }

    @GetMapping("/detail")
    public String mostrarDetalle(Model model){
        model.addAttribute("msg", "Hola mundo desde el model");
        return "detail";
    }

}
