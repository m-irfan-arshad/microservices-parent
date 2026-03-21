package com.irfan.microservices.authservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/sample")
public class SampleControler {
    int a = 0;
    float b = 0.0f;


    @GetMapping("/hello")
        public String hello(){
            return " sadsddadsdsdssdaMo !";
        }


}
