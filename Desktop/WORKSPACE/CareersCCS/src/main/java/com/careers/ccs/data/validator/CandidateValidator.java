package com.careers.ccs.data.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.w3c.dom.Element;

import com.careers.ccs.data.dao.CandidateDAO;
import com.careers.ccs.data.entities.Candidate;
import com.careers.ccs.data.entities.User;
import com.careers.ccs.data.services.UserServices;

@Component
public class CandidateValidator implements Validator{

	private static final Logger logger = LoggerFactory.getLogger(CandidateValidator.class);
	
	@Autowired
	private UserServices userServices;
	
	@Override
	public boolean supports(Class<?> arg0) {
		logger.info("Checking for supports");
		return Candidate.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors error) {
		Candidate candidate = (Candidate) arg0;
		
		if(!ValidatorUtils.validateSimpleName(candidate.getFirst_name())){
			error.rejectValue("first_name", "", "Contains Illegal Characters");
		}
		
		if(!ValidatorUtils.validateMaxLength(candidate.getFirst_name(), 45)){
			error.rejectValue("first_name", "", "Maximum of 45 letters");
		}
		
		if(!ValidatorUtils.validateEmpty(candidate.getFirst_name())){
			error.rejectValue("first_name", "", "Enter first name");
		}
		
		if(!ValidatorUtils.validateSimpleName(candidate.getLast_name())){
			error.rejectValue("last_name", "", "Contains Illegal Characters");
		}
		
		if(!ValidatorUtils.validateMaxLength(candidate.getLast_name(), 45)){
			error.rejectValue("last_name", "", "Maximum of 45 letters");
		}
		
		if(!ValidatorUtils.validateEmpty(candidate.getLast_name())){
			error.rejectValue("last_name", "", "Enter last name");
		}
		
		if(!ValidatorUtils.validateEmail(candidate.getEmail())){
			error.rejectValue("email", "", "Insert valid email");
		}
		
		if(!ValidatorUtils.validateMaxLength(candidate.getEmail(), 45)){
			error.rejectValue("email", "", "Maximum of 45 letters");
		}
		
		if(!ValidatorUtils.validatePassword(candidate.getPassword())){
			error.rejectValue("password", "", "Contains Illegal Characters");
		}
		
		if(!ValidatorUtils.validateMaxLength(candidate.getPassword(), 12)){
			error.rejectValue("password", "", "Maximum of 12 characters");
		}
		
		if(!ValidatorUtils.validateEmpty(candidate.getPassword())){
			error.rejectValue("password", "", "Enter Password");
		}
		
		if(!userServices.isEmailAvailable(new User(candidate.getEmail(), candidate.getPassword()))){
			error.rejectValue("email", "", "Email already used");
		}

	}

}
