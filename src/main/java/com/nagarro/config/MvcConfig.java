package com.nagarro.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
/**
 * this class act as configuration class for program
 * @author rahul04
 *
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.nagarro")
public class MvcConfig extends WebMvcConfigurerAdapter {
	
	
	@Bean
	public RestTemplate getRestTemplate(){
		return new RestTemplate();
	}
}