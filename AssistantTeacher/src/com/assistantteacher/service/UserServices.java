package com.assistantteacher.service;

import com.assistantteacher.entity.Admin;

public interface UserServices {
	public Admin adminAuthenticate(String email, String password);
}
