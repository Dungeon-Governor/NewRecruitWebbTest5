package com.recruit.daoimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recruit.dao.RegisterDao;
import com.recruit.vo.Muser;
import com.recruit.vo.Team;
@Repository("/registerDao")
public class RegisterDaoImpl extends SqlSessionDaoSupport implements RegisterDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public void register(Muser muser) {
		// TODO Auto-generated method stub
		getSqlSession().insert("com.recruit.vo.muser.register", muser);
	}

	@Override
	public void addTeam(Team team) {
		// TODO Auto-generated method stub
		getSqlSession().insert("com.recruit.vo.team.addTeam", team);
	}


	
}
