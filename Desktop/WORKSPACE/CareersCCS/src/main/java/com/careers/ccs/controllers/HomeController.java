package com.careers.ccs.controllers;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.careers.ccs.data.dao.UserDAO;
import com.careers.ccs.data.dao.imp.UserDAOImp;
import com.careers.ccs.data.entities.Candidate;
import com.careers.ccs.data.entities.User;
import com.careers.ccs.data.services.UserServices;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private JdbcTemplate template;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Adding Candidate object to model");
		model.addAttribute("candidate", new Candidate());
		logger.info("Going to home.jsp");
		return "home";
	}
	
	@RequestMapping(value = "/add")
	public String add(Locale locale, Model model) throws FileNotFoundException {
		Scanner scanner = new Scanner(new FileReader("C:/A-Z.txt"));
		while(scanner.hasNext()){
			template.update("INSERT INTO country(country_name) VALUES(?)" , scanner.nextLine());
		}
		return "home";
	}
}
