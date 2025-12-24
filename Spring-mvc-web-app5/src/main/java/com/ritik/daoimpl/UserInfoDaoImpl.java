package com.ritik.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.ritik.dao.UserInfoDao;
import com.ritik.pojo.UserInfo;

@Component
public class UserInfoDaoImpl implements UserInfoDao {

	 private JdbcTemplate jTemplate;
	 
	@Autowired
	public void setjTemplate(JdbcTemplate jTemplate) {
		this.jTemplate = jTemplate;
	}

	@Override
	public boolean checkUserValidation(UserInfo u) {
		UserInfo user= null;
		try {
			user = jTemplate.queryForObject("select * from userinfo where username =? and password=?",
					new BeanPropertyRowMapper<UserInfo>(UserInfo.class),
					new Object[] {u.getUsername(),u.getPassword()});
			return true;
			
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean addUser(UserInfo u) {
		try {
			int count = jTemplate.update("insert into userinfo values(?,?)",
					     new Object[] {u.getUsername(),u.getPassword()});
			if(count>0)
				return true;
			else
				return false;
			
		} catch (Exception e) {
			System.err.println(e);
			return false;
		}
	}
   
	 
}
