package com.assistantteacher.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;
import org.springframework.stereotype.Repository;

import com.assistantteacher.entity.Admin;

@Repository
public class UserDaoImpl extends GenericDaoImpl<Admin, Long> implements UserDao{
	@Override
	public Admin adminAuthenticate(String email, String password) {
			Criteria c2=getCurrentSession().createCriteria(Admin.class)
					.createAlias("userRole", "r",JoinType.LEFT_OUTER_JOIN)
					.createAlias("r.priviligesList", "p",JoinType.LEFT_OUTER_JOIN);
			
			c2.add(Restrictions.eq("email", email));
			c2.add(Restrictions.eq("uPassword", password));	
			Admin admin_user = (Admin) c2.uniqueResult();
			return admin_user;
			
}
}
