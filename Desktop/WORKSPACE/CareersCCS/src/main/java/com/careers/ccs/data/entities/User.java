package com.careers.ccs.data.entities;

import java.math.BigDecimal;
import org.springframework.validation.annotation.*;

public class User {
	private long user_id;
	
	private String email;

	private String password;
	
	public User(){};
	
	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}	
	
	@Override
	public String toString(){
		return "email : " + email + "\n" +
				"password : " + password;
	}
}
