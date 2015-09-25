package com.careers.ccs.data.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.UserDAO;
import com.careers.ccs.data.entities.User;

public class UserServices {
	
	private static final Logger logger = LoggerFactory.getLogger(UserServices.class);
	
	@Autowired
	private UserDAO userDAO;
	
	public UserServices(){}
	
	public long addUser(User user){
		logger.info("Adding User");
		long id = userDAO.addUser(user);
		return id;
	}
	
	public boolean isEmailAvailable(User user){
		logger.info("Checking user");
		return userDAO.isEmailAvailable(user.getEmail());
	}

	public User getUser(User user){
		logger.info("Getting User");
		User temp = userDAO.getUser(user);
		return temp;
	}
}
