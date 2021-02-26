package com.recruit.daoimpl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recruit.dao.UserDao;

import com.recruit.vo.Muser;
import com.recruit.vo.Team;
import com.recruit.vo.User;
@Repository("/userDao")
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

    /* �����û��������û����� */
	@Override
    public User findUserByName(String name) {
        
        return getSqlSession().selectOne("com.recruit.vo.user.findUserByName", name);
    }

	@Override
	public List<Muser> list() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("com.recruit.vo.muser.list");
	}

	@Override
	public Muser selectMuserByid(Integer id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("com.recruit.vo.muser.selectMuserByid", id);
	}

	@Override
	public void deleteMuserByid(Integer id) {
		// TODO Auto-generated method stub
		getSqlSession().delete("com.recruit.vo.muser.deleteMuserByid", id);
	}

	
	@Override
	public List<Team> list1() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("com.recruit.vo.team.list1");
	}

	@Override
	public void deleteTeamByid(Integer id) {
		// TODO Auto-generated method stub
		getSqlSession().delete("com.recruit.vo.team.deleteTeamByid", id);
	}


	
}
