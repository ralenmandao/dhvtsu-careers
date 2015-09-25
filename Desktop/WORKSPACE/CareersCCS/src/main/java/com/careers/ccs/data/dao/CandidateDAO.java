package com.careers.ccs.data.dao;

import com.careers.ccs.data.entities.Candidate;

public interface CandidateDAO {
	public long addCandidate(Candidate candidate);
	public Candidate getCandidate(Candidate candidate);
}
