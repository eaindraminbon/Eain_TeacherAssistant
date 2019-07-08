package com.assistantteacher.service;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import com.assistantteacher.dao.UserDao;
import com.assistantteacher.entity.Admin;
@Service
public class UserServicesImlp implements UserServices{
	@Autowired
	private UserDao userDao;	
	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
	
	@Override
	public Admin adminAuthenticate(String email, String password) {
		Admin admin_user = userDao.adminAuthenticate(email, password);
		return admin_user;
	}


}
