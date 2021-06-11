package com.nagarro.model;

import java.util.List;

/**
 * this class contains list of type Employeee 
 * @author rahul04
 *
 */
public class EmployeeList {
	
	
	List<Employee> list;
	
	
	
	

	public EmployeeList() {
		
	}

	public EmployeeList(List<Employee> list) {
		super();
		this.list = list;
	}

	public List<Employee> getList() {
		return list;
	}

	public void setList(List<Employee> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "EmployeeList [list=" + list + "]";
	}
	
	
	
	

}
