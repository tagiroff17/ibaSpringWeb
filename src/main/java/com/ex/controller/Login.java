package com.ex.controller;

/**
 * Created by Tagirov on 03.05.2017
 */

import com.ex.annotation.ContentServiceQualifier;
import com.ex.entity.Content;
import com.ex.service.ContentService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Login {

    @Autowired
    @ContentServiceQualifier
    private ContentService contentService;


//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public ModelAndView login() {
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("content", contentService.getContent());
//        modelAndView.setViewName("login");
//        System.out.println("Login");
//        return modelAndView;
//    }
    
	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username or password!");
		}

		model.setViewName("login");

		return model;

	}
    
    @PreAuthorize("ROLE_ADMIN")
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView listInvoices() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("content", contentService.getContent());
        modelAndView.setViewName("index");
        System.out.println("Index");
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addItem(@ModelAttribute("content")Content newContent) {
        contentService.refresh(newContent);
        contentService.addItem();
        return "redirect:/index/";
    }
    

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteItems(@ModelAttribute("content")Content newContent) {
        contentService.refresh(newContent);
        contentService.deleteAllNecessaryItems();
        return "redirect:/index/";
    }
}
