package com.shadow.blog.users.dao;

import com.shadow.blog.users.dto.UsersDto;

public interface UsersDao {
	public void insert();	
	public boolean checkId();
	public void update();
	public UsersDto getData();
}