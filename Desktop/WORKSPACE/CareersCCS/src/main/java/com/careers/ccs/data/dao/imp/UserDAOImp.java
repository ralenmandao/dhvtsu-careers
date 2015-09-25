package com.careers.ccs.data.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.careers.ccs.data.dao.UserDAO;
import com.careers.ccs.data.entities.User;
import com.mysql.jdbc.Statement;

public class UserDAOImp implements UserDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(UserDAOImp.class);
	
	@Autowired
	private JdbcTemplate template;
	
	public UserDAOImp(){}
	
	@Override
	public long addUser(User user) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		int update = template.update(
		  new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement("INSERT INTO user(email,password) VALUES(?,?)" , Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getPassword());
				return ps;
				 
			}
		  }, keyHolder);

		return keyHolder.getKey().longValue();
	}

	@Override
	public User getUser(User user) {
		try{
			String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
			User temp = template.queryForObject(sql, new Object[]{user.getEmail() , user.getPassword()} , new UserRowMapper());
			return temp;
		}catch(EmptyResultDataAccessException e){
			return null;
		}
	}

	@Override
	public boolean isEmailAvailable(String email) {
		String sql = "SELECT COUNT(*) FROM user WHERE email = ?";
		Integer cnt = template.queryForObject(sql, Integer.class, email);
		return cnt == 0 ? true : false;
	}

	class UserRowMapper implements RowMapper<User>{

		@Override
		public User mapRow(ResultSet rs, int row) throws SQLException {
			User user = new User();
			user.setUser_id(rs.getLong("user_id"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			return null;
		}
		
		
	}
}
