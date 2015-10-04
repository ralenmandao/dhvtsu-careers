package com.careers.ccs.data.entities;

public class Country {
	private long country_id;
	private String country_name;
	
	public Country(){}

	public long getCountry_id() {
		return country_id;
	}

	public void setCountry_id(long country_id) {
		this.country_id = country_id;
	}

	public String getCountry_name() {
		return country_name;
	}

	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	};
	
	@Override
	public String toString(){
		return country_name;
	}
	
}
