package com.careers.ccs.controllers;

import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	@RequestMapping(value = "/candidate", method = RequestMethod.GET)
	public String showCandidate(Locale locale, Model model, HttpSession session) {
		Candidate candidate = (Candidate) session.getAttribute("candidate");
		
		candidate.setFirst_name(candidate.getFirst_name().toLowerCase());
		candidate.setLast_name(candidate.getLast_name().toLowerCase());
		
		long id = userServices.addUser(candidate);
		candidate.setUser_id(id);
		long canId = candidateServices.addCandidate(candidate);
		candidate.setCandidate_id(canId);
		
		model.addAttribute("candidate", candidate);
		return "register";
	}
	
	@RequestMapping(value = "/candidate/validate", method = RequestMethod.POST)
	public String registerCandidate(Locale locale, Model model, 
			@Valid @ModelAttribute Candidate candidate, Errors error, 
			HttpSession session) {
		if(error.hasErrors()){
			return "home";
		}
		session.setAttribute("candidate", candidate);
		return "redirect:/register/candidate";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(validator);
	}
}
