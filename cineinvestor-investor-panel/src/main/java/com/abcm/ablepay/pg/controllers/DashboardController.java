package com.abcm.ablepay.pg.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.abcm.ablepay.pg.utils.LoggerUtil;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {
	
	
	
	
	
	
	@GetMapping("/kycDetails")
	public String kycDetails(Model model,HttpSession session) {

		//		try 
		//		{
		LoggerUtil.LOGGER.info("inside kycDetails ");
		//			 log.info(" loggedInUser  ::"+ session.getAttribute("loggedInUser"));
		//			
		//			  User user = userDetailsServiceImpl.getLoggedUser();
		//              log.info("user :"+user);
		//              model.addAttribute("username", user.getUsername()); 
		//			if (user != null) {
		//				return "dashboard";
		//
		//			}
		//
		//		}
		//		catch(Exception e)
		//		{
		//			e.getMessage();
		//		}
		return "KYC";
	}
	
	@GetMapping("/Projects")
	public String Projects(Model model,HttpSession session) {

		//		try  
		//		{
		LoggerUtil.LOGGER.info("inside Projects ");
		//			 log.info(" loggedInUser  ::"+ session.getAttribute("loggedInUser"));
		//			
		//			  User user = userDetailsServiceImpl.getLoggedUser();
		//              log.info("user :"+user);
		//              model.addAttribute("username", user.getUsername()); 
		//			if (user != null) {
		//				return "dashboard";
		//
		//			}
		//
		//		}
		//		catch(Exception e)
		//		{
		//			e.getMessage();
		//		}
		return "Projects";
	}
	
	

	
}
