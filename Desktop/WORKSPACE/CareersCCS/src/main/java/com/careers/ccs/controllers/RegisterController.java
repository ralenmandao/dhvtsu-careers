package com.careers.ccs.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.careers.ccs.data.entities.Candidate;
import com.careers.ccs.data.entities.User;
import com.careers.ccs.data.services.CandidateServices;
import com.careers.ccs.data.services.UserServices;
import com.careers.ccs.data.validator.CandidateValidator;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CandidateValidator validator;
	@Autowired
	private UserServices userServices;
	@Autowired
	private CandidateServices candidateServices;
	
	@RequestMapping(value = "/candidate", method = RequestMethod.POST)
	public String showCandidate(Locale locale, Model model, HttpSession session, 
			@Valid @ModelAttribute Candidate candidate, Errors error) {
		logger.info("Checking for Errors");
		if(error.hasErrors()){
			logger.error("Found an error");
			return "home";
		}
		logger.info("No errors found");
		
		long id = userServices.addUser(candidate);
		candidate.setUser_id(id);
		long canId = candidateServices.addCandidate(candidate);
		candidate.setCandidate_id(canId);
		
//		Candidate candidate = new Candidate();
//		candidate.setEmail("ralencc@yahoo.com");
//		candidate.setFirst_name("Ralen");
//		candidate.setLast_name("Mandap");
//		candidate.setPassword("jujukiki");
		
		model.addAttribute("candidate", candidate);
		
		return "register";
	}
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(validator);
	}
}
