package com.careers.ccs.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.SpecializationDAO;
import com.careers.ccs.data.dao.imp.SpecializationDAOImp;
import com.careers.ccs.data.entities.Skill;
import com.careers.ccs.data.entities.Specialization;

@Component
public class SpecializationServices implements Services{
	@Autowired
	private SpecializationDAO specialization;
	
	public List<Specialization> getSpecializations(){
		return specialization.getSpecializations();
	}
	
	public List<Integer> getSpecializationIds(List<Specialization> specialization){
		//List<Integer> ids = new ArrayList<>
		return null;
	}
}
