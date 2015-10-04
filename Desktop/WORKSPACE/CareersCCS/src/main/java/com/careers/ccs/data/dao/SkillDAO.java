package com.careers.ccs.data.dao;

import java.util.List;

import com.careers.ccs.data.entities.Skill;

public interface SkillDAO {
	public List<Skill> getSkills(long spc_id);
}
