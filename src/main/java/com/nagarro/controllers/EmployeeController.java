package com.nagarro.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nagarro.model.Employee;
import com.nagarro.model.EmployeeList;

/**
 * This class act as controller to take end point for employee details
 * @author rahul04
 *
 */
@Controller
public class EmployeeController {

	
	@Autowired
	RestTemplate restTemplate;
	
	
	@RequestMapping("empdetails")
	public ModelAndView emp(@RequestParam(value = "eidd") int eid) {
		ModelAndView mView = new ModelAndView();
		
		System.out.println(eid);
		Employee item = restTemplate.getForObject("http://localhost:9090/employee/"+eid, Employee.class);
		
		mView.addObject("item", item);
		System.out.println("employeecontroller working!! "+item.toString());
		mView.setViewName("editEmp.jsp");
		return mView;
		
	}
	@RequestMapping("update")
	public ModelAndView update(@RequestParam("empCodee") int empcode  ,@RequestParam("empName") String empname,@RequestParam("location") String location,@RequestParam("email") String email,@RequestParam("date") String date) {
		ModelAndView mView = new ModelAndView();
//		HttpServletRequest request = null;
//		int empcode=(int)request.getAttribute("itemid");
		System.out.println(" "+empname+" "+empcode+" "+location);
		
		Employee employee = new Employee();
		employee.setEid(empcode);
		employee.setEname(empname);
		employee.setLocation(location);
		employee.setEmail(email);
		employee.setDate(date);
		
		// Prepare url
        String url = "http://localhost:9090/employee";
        
     // Creating the ObjectMapper object
        ObjectMapper mapper = new ObjectMapper();
        // Converting the Object to JSONString
        String jsonString = null;
        try {
            jsonString = mapper.writeValueAsString(employee);
        } catch (JsonProcessingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        
        HttpEntity<String> entity = new HttpEntity<String>(jsonString, headers);
        String answerString =  restTemplate.postForObject(url, entity, String.class);
        
        System.out.println(answerString);
		
		mView.setViewName("index.jsp");
		return mView;
	}
	
	
}
