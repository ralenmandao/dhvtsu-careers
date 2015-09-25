package com.careers.ccs.data.entities;

import javax.validation.constraints.*;

public class Candidate extends User{
	private long candidate_id;
	
	@NotNull
	private String first_name;
	@NotNull
	private String last_name;
	
	public Candidate(){}
	

	public Candidate(String first_name, String last_name) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
	}


	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public long getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(long candidate_id) {
		this.candidate_id = candidate_id;
	};
	
	@Override
	public String toString(){
		return "Name : " + first_name + " " + last_name + "\n" + super.toString();
	}
}
