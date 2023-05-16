package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RestController
public class HelloController {
    Logger logger = (Logger) LoggerFactory.getLogger(HelloController.class);
    
    @GetMapping("/")
    String index() {
        String message = "Hello, World!";
        logger.info(message);
        return message;
    }
}
