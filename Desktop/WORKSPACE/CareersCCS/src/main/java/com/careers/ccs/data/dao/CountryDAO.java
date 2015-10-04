package com.careers.ccs.data.dao;

import java.util.List;

import com.careers.ccs.data.entities.Country;

public interface CountryDAO {
	public Country getCountry(int id);
	public List<Country> getCountries();
}
