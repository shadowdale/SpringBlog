package com.shadow.blog.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shadow.blog.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert() {
		// TODO Auto-generated method stub
		
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
	public UsersDto getData() {
		// TODO Auto-generated method stub
		return null;
	}

}
