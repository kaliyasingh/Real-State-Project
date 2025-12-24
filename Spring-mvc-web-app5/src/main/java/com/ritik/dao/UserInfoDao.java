package com.ritik.dao;

import com.ritik.pojo.UserInfo;

public interface UserInfoDao { 
	
	public boolean checkUserValidation(UserInfo u);
	public boolean addUser(UserInfo u);

}
