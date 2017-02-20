package com.shadow.blog.user.dao;

import com.shadow.blog.user.dto.UserDto;

public interface UserDao {
	public void insert(UserDto dto);	
	public boolean checkId(String inputId);
	public void update();
	public UserDto getData();
	public String getPassword(String id);
}
