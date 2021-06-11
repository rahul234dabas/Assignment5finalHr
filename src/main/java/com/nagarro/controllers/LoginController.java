package com.nagarro.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.dao.ValidateUser;
import com.nagarro.model.Employee;
import com.nagarro.model.EmployeeList;
import com.nagarro.model.Hrmodel;

import antlr.collections.List;


/**
 * this class act as controller for login related api calls
 * @author rahul04
 *
 */
@Controller
public class LoginController {
	
	
	@Autowired
	RestTemplate restTemplate;
	
	@RequestMapping("login")
	public ModelAndView login(@RequestParam("userId") String userid,@RequestParam("password") String password) {
		ModelAndView mView = new ModelAndView();
		
		
//		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//		Transaction transaction= null;
//		Session session = sessionFactory.openSession();
//		
//		transaction = session.beginTransaction();
//		
//		Hrmodel user1= new Hrmodel();
//		user1.setHruserid("root");
//		user1.setHrpassword("root");
//		session.saveOrUpdate(user1);
//		transaction.commit();
		
		
		
		ValidateUser vUser = new ValidateUser();
		
		if(!vUser.validate(userid, password)) {
			mView.setViewName("error.jsp");
		}
		else {
			EmployeeList employee = restTemplate.getForObject("http://localhost:9090/employees", EmployeeList.class);
			System.out.println(employee.getList().get(0).getEname());
			mView.addObject("employees", employee);
			mView.setViewName("empdetails.jsp");
		}
		
		
		return mView;
	}
	
	
	
	
}
