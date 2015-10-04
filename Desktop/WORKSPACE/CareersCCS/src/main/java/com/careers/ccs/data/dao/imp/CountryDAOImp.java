package com.careers.ccs.data.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.CountryDAO;
import com.careers.ccs.data.entities.Country;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.exceptions.DriverException;

@Component
public class CountryDAOImp implements CountryDAO{

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public Country getCountry(int id) {
		try{
			Country country = template.queryForObject("SELECT * FROM country where country_id = ?", new Object[]{}, new CountryRowMapper());
			return country;
		}catch(EmptyResultDataAccessException e){
			return null;
		}
	}

	@Override
	public List<Country> getCountries() {
		List<Country> countries = template.query("SELECT * FROM country", new CountryRowMapper());
		return countries;
	}
	
	class CountryRowMapper implements RowMapper<Country>{
		@Override
		public Country mapRow(ResultSet rs, int row) throws SQLException {
			Country country = new Country();
			country.setCountry_id(rs.getLong("country_id"));
			country.setCountry_name(rs.getString("country_name"));
			return country;
		}
	}

}
