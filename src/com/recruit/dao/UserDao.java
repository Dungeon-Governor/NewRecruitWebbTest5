package com.recruit.dao;

import java.util.List;

import com.recruit.vo.Muser;
import com.recruit.vo.Team;
import com.recruit.vo.User;


public interface UserDao {
	public User findUserByName(String name);
	
	public List<Muser> list();
	
	public Muser selectMuserByid(Integer id);
	
	public void deleteMuserByid(Integer id);
	
	
	
	public List<Team> list1();
	
	public void deleteTeamByid(Integer id);
	
	
	
}
