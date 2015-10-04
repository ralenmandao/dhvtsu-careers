package com.careers.ccs.data.entities;

public class Specialization {
	private long specialization_id;
	private String specialization_name;
	
	public Specialization(){}
	
	public long getSpecialization_id() {
		return specialization_id;
	}
	public void setSpecialization_id(long specialization_id) {
		this.specialization_id = specialization_id;
	}
	public String getSpecialization_name() {
		return specialization_name;
	}
	public void setSpecialization_name(String specialization_name) {
		this.specialization_name = specialization_name;
	}
	
	
	
	@Override
	public String toString(){
		return specialization_name;
	}
}
