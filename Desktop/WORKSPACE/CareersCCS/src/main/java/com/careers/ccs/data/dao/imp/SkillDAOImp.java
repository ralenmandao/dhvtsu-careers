package com.careers.ccs.data.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.SkillDAO;
import com.careers.ccs.data.entities.Skill;

@Component
public class SkillDAOImp implements SkillDAO{

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public List<Skill> getSkills(long spc_id) {
		final List<Skill> skills = template.query("SELECT * FROM skill WHERE specialization_id=?", new Object[]{spc_id},new RowMapper<Skill>(){
			@Override
			public Skill mapRow(ResultSet rs, int row) throws SQLException {
				final Skill skill = new Skill();
				skill.setSkill_id(rs.getLong("skill_id"));
				skill.setSkill_name(rs.getString("skill_name"));
				skill.setSpecialization_id(rs.getLong("specialization_id"));
				return skill;
			}
		});
		return skills;
	}

}
