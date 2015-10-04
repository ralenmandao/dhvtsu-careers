package com.careers.ccs.data.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.SkillDAO;
import com.careers.ccs.data.entities.Skill;
import com.careers.ccs.data.entities.Specialization;

@Component
public class SkillServices {
	@Autowired
	private SkillDAO skillDAO;
	
	public List<Skill> getSkills(long id){
		return skillDAO.getSkills(id);
	}
	
	public Map<Long,List<Skill>> getSkills(List<Specialization> spc){
		Map<Long,List<Skill>> skillMap = new HashMap<Long,List<Skill>>();
		spc.forEach(e -> {
			skillMap.put(e.getSpecialization_id(), skillDAO.getSkills(e.getSpecialization_id()));
		});
		return skillMap;
	}
}
