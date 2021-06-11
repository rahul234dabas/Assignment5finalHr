package com.nagarro.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * This class act as model class for type Employee
 * @author rahul04
 *
 */
@Entity
@Table(name = "Employee")
public class Employee {
	
	public Employee() {
		
	}
	@Id
	@GeneratedValue
	private int eid;
	private String ename;
	private String location;
	private String email;
	private String date;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", location=" + location + ", email=" + email + ", date="
				+ date + "]";
	}
	
	
	
}
