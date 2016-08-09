package com.sh.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by zhaopin on 16/7/5.
 */
@RestController
@RequestMapping("/page")
public class PageController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView mainPage() {
        return new ModelAndView("main");
    }
}
