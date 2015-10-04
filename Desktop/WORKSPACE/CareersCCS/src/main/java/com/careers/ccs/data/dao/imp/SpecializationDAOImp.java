package com.careers.ccs.data.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;




import org.springframework.stereotype.Component;

import com.careers.ccs.data.dao.SpecializationDAO;
import com.careers.ccs.data.entities.Specialization;

@Component
public class SpecializationDAOImp implements SpecializationDAO{

	private static final Logger logger = LoggerFactory.getLogger(SpecializationDAOImp.class);
	
	@Autowired
	private JdbcTemplate template;
	
	@Override
	public List<Specialization> getSpecializations() {
		
		if(template == null){
			logger.error("aw");
		}
		
		List<Specialization> specializations = template.query("SELECT * FROM specialization", new RowMapper<Specialization>(){

			@Override
			public Specialization mapRow(ResultSet res, int row)
					throws SQLException {
				Specialization spec = new Specialization();
				spec.setSpecialization_id(res.getLong("specialization_id"));
				spec.setSpecialization_name(res.getString("specialization_name"));
				return spec;
			}
			
		});
		return specializations;
	}

}
