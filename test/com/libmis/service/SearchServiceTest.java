package com.libmis.service;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.Book;
import com.libmis.model.Search;
import com.libmis.model.User;

public class SearchServiceTest {
	
	private static ApplicationContext context;
	private static SearchService searchService;
	
	@BeforeClass
	public static void beforeClass(){
		context = new ClassPathXmlApplicationContext("applicationContext-core.xml");
		searchService=(SearchService) context.getBean("searchService");
	}
	
	@Test
	public void testAdd(){
		User user = new User();
		user.setId(3);
		Search search = new Search();
		search.setContent("wocao");
		search.setTime(new Date(System.currentTimeMillis()));
		search.setUser(user);
		System.out.println(searchService.save(search));
	}

}
