package com.recruit.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.dao.RegisterDao;
import com.recruit.service.RegisterService;
import com.recruit.vo.Muser;
import com.recruit.vo.Team;
@Service("/registerService")
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterDao registerDao;
	
	@Override
	public void register(Muser muser) {
		// TODO Auto-generated method stub
		registerDao.register(muser);
	}

	@Override
	public void addTeam(Team team) {
		// TODO Auto-generated method stub
		registerDao.addTeam(team);
	}

}
