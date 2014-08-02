package com.libmis.service;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BookCopy {
	
	private static ApplicationContext context;
	private static BookService bookService;
	private static CopyService copyService;
	
	@BeforeClass
	public static void beforeClass(){
		context = new ClassPathXmlApplicationContext("applicationContext-core.xml");
		bookService=(BookService) context.getBean("bookService");
		copyService=(CopyService) context.getBean("copyService");
	}
	
	@Test
	public void addBookAndCopy(){
		
	}

}
