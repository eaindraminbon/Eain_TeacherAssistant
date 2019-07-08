package com.assistantteacher.dao;


import java.util.Date;
import java.util.List;

import com.assistantteacher.entity.Admin;
public interface UserDao {
	public Admin adminAuthenticate(String email, String password);

}
