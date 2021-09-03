package com.company.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.service.TestService;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
public class HomeController {
	
	@Autowired
	private TestService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/aop5", method = RequestMethod.GET)
	public String aop(Model model) throws Exception{
		log.info("..........aop");
		log.info(service.doAdd("500", "500"));
		model.addAttribute("result" , service.doAdd("500", "500"));
		return "aop5";
	}
	
	@RequestMapping(value = "/basic" , method = RequestMethod.GET)
	public String home(@RequestParam("data") int data, Model model) {
		log.info(data);
		model.addAttribute("data",data);
		return "basic";
	}
	
}
