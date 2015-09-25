package com.careers.ccs.data.dao;

import com.careers.ccs.data.entities.User;

public interface UserDAO {
	public long addUser(User user);
	public User getUser(User user);
	public boolean isEmailAvailable(String email);
}
