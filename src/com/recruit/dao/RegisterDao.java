package com.recruit.dao;

import java.util.List;

import com.recruit.vo.Muser;
import com.recruit.vo.Team;

public interface RegisterDao {

	public void register(Muser muser);

	public void addTeam (Team team);
	
	
}
