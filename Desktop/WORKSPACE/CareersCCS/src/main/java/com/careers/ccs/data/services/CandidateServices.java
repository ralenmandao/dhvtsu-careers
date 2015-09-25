package com.careers.ccs.data.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.careers.ccs.data.dao.CandidateDAO;
import com.careers.ccs.data.entities.Candidate;

public class CandidateServices {
	
	@Autowired
	private CandidateDAO candidateDAO;
	
	public CandidateServices(){};
	
	public long addCandidate(Candidate candidate){
		return candidateDAO.addCandidate(candidate);
	}
}
