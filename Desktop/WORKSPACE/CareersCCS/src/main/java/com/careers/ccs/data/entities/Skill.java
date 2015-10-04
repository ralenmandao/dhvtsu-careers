package com.careers.ccs.data.entities;

public class Skill {
	private long skill_id;
	private String skill_name;
	private long specialization_id;
	
	public Skill(){}

	public long getSkill_id() {
		return skill_id;
	}

	public void setSkill_id(long skill_id) {
		this.skill_id = skill_id;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	public long getSpecialization_id() {
		return specialization_id;
	}

	@Override
	public String toString(){
		return skill_name;
	}
	
	public void setSpecialization_id(long specialization_id) {
		this.specialization_id = specialization_id;
	};
}
