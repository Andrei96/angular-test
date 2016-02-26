package me.codaline.angular.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @RequestMapping("/")
    public ModelAndView home() throws Exception {
        return new ModelAndView("index");
    }
}