package com.libmis.service;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.User;

public class UserServiceTest {
	
	private static ApplicationContext context;
	private static UserService userService;
	
	@BeforeClass
	public static void beforeClass(){
		context = new ClassPathXmlApplicationContext("applicationContext-core.xml");
		userService=(UserService) context.getBean("userService");
	}
	
	@Test
	public void testAdd(){
		User user=new User();
		user.setUsername("admin");
		user.setPassword("admin");
		userService.save(user,null);
	}
	
	@Test
	public void testSearch(){
		List<User> list=userService.search("男",0,10);
		System.out.println(list);
	}
}
