package com.nagarro.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * This class act as model class for HR
 * @author rahul04
 *
 */
@Entity
@Table(name = "Hrmodel")
public class Hrmodel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int hid;
	private String hruserid;
	private String hrpassword;
	
	
	public Hrmodel() {
		
	}
	
	public Hrmodel(String hruserid, String hrpassword) {
		super();
		this.hruserid = hruserid;
		this.hrpassword = hrpassword;
	}
	@Override
	public String toString() {
		return "Hrmodel [hid=" + hid + ", hruserid=" + hruserid + ", hrpassword=" + hrpassword + "]";
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHruserid() {
		return hruserid;
	}
	public void setHruserid(String hruserid) {
		this.hruserid = hruserid;
	}
	public String getHrpassword() {
		return hrpassword;
	}
	public void setHrpassword(String hrpassword) {
		this.hrpassword = hrpassword;
	}
}
