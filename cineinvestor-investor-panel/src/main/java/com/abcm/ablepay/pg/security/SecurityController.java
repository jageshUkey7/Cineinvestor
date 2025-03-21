package com.abcm.ablepay.pg.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import jakarta.servlet.http.HttpSession;

@Controller
public class SecurityController {

	Logger log =LoggerFactory.getLogger(getClass());



	@GetMapping("/login")
	public String login() 
	{
		log.info("inside login ");
		return "login";
	}

	@GetMapping("/dashboard")
	public String dashboard(Model model,HttpSession session) {

		//		try 
		//		{
					log.info("inside dashboard ");
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
		return "dashboard";
	}


}
