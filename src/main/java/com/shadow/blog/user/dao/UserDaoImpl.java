package com.shadow.blog.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shadow.blog.user.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(UserDto dto) {
		session.insert("users.insert", dto);
		
	}

	@Override
	public boolean checkId(String inputId) {
		String resultId = session.selectOne("users.isExistId", inputId);
		if(resultId == null) {
			return true;
		} else {
			return false;			
		}
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserDto getData() {
		// TODO Auto-generated method stub
		return null;
	}

}
