package com.nagarro.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.nagarro.model.Hrmodel;
/**
 * This class is used for validating user in database
 * @author rahul04
 *
 */
public class ValidateUser {
	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	List<Hrmodel> userList=null;
	public static Hrmodel currentUser=null;

	public boolean validate(String user,String pass) {
		
		Transaction transaction= null;
		Session session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		userList=castList(Hrmodel.class, session.createQuery("from Hrmodel").list());
		for (Hrmodel userModel : userList) {
			if(userModel.getHruserid().equals(user) && userModel.getHrpassword().equals(pass)) {
				currentUser=userModel;
				
				return true;
			}
		}
		transaction.commit();
		return false;
		
	}
	private static <T> List<T> castList(Class<? extends T> clazz, Collection<?> c) {
		List<T> r = new ArrayList<T>(c.size());
		for (Object o : c)
			r.add(clazz.cast(o));
		return r;
	}
}
