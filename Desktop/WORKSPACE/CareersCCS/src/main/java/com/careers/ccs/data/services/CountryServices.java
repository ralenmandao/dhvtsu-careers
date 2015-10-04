package com.careers.ccs.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.CountryDAO;
import com.careers.ccs.data.dao.imp.CountryDAOImp;
import com.careers.ccs.data.entities.Country;

@Component
public class CountryServices implements Services{
	
	@Autowired
	private CountryDAO countryDAO;
	
	public Country getCountry(int country_id){
		return countryDAO.getCountry(country_id);
	}
	
	public List<Country> getCountries(){
		return countryDAO.getCountries();
	}
	
}
