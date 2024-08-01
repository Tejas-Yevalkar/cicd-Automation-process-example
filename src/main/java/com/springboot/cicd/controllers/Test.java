package com.springboot.cicd.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class Test {

    @GetMapping("/test")
    public String getTest(){
        return "Code Deployed Successfully...!!!";
    }
}
