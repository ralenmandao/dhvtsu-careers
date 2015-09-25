package com.careers.ccs.data.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.careers.ccs.data.dao.CandidateDAO;
import com.careers.ccs.data.entities.Candidate;
import com.mysql.jdbc.Statement;

public class CandidateDAOImp implements CandidateDAO{

	private static final Logger logger = LoggerFactory.getLogger(CandidateDAOImp.class);
	
	@Autowired
	private JdbcTemplate template;
	
	public CandidateDAOImp(){};
	
	@Override
	public long addCandidate(Candidate candidate) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		int row = template.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection connection)
					throws SQLException {
				PreparedStatement ps = connection.prepareStatement("INSERT INTO candidate VALUES(NULL,?,?,?)", Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, candidate.getFirst_name());
				ps.setString(2, candidate.getLast_name());
				ps.setLong(3, candidate.getUser_id());
				return ps;
			}
		}, keyHolder);
		
		logger.info("Adding Candidate");
		return keyHolder.getKey().longValue();
	}

	@Override
	public Candidate getCandidate(Candidate candidate) {
		logger.info("Getting Candidate");
		Candidate temp = template.queryForObject("SELECT * FROM candidate WHERE candidate_id = ?", new Object[]{candidate.getCandidate_id()}, new CandidateMapper());
		return temp;
	}
	
	class CandidateMapper implements RowMapper<Candidate>{

		@Override
		public Candidate mapRow(ResultSet rs, int row) throws SQLException {
			Candidate candidate = new Candidate();
			candidate.setFirst_name(rs.getString("first_name"));
			candidate.setCandidate_id(rs.getLong("candidate_id"));
			candidate.setLast_name(rs.getString("last_name"));
			candidate.setUser_id(rs.getLong("user_id"));
			return candidate;
		}
		
	}

}
