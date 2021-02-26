package com.recruit.serviceimpl;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.dao.UserDao;
import com.recruit.service.UserService;
import com.recruit.vo.Muser;
import com.recruit.vo.Team;
import com.recruit.vo.User;
@Service("/userService")
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	@Override
	public User checkLogin(String name, String password) {
		// TODO Auto-generated method stub
		User user =  userDao.findUserByName(name);
		if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;

	}
	
	@Override
	public List<Muser> list() {
		// TODO Auto-generated method stub
		return userDao.list();
	}

	@Override
	public Muser selectMuserByid(Integer id) {
		// TODO Auto-generated method stub
		return userDao.selectMuserByid(id);
	}

	@Override
	public void deleteMuserByid(Integer id) {
		// TODO Auto-generated method stub
		userDao.deleteMuserByid(id);
	}

	

	@Override
	public List<Team> list1() {
		// TODO Auto-generated method stub
		return userDao.list1();
	}

	@Override
	public void deleteTeamByid(Integer id) {
		// TODO Auto-generated method stub
		userDao.deleteTeamByid(id);
	}
}
