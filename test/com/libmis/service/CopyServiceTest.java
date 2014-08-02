package com.libmis.service;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.Book;
import com.libmis.model.Copy;

public class CopyServiceTest {
	
	private static ApplicationContext context;
	private static CopyService copyService;
	
	@BeforeClass
	public static void beforeClass(){
		context = new ClassPathXmlApplicationContext("applicationContext-core.xml");
		copyService=(CopyService) context.getBean("copyService");
	}
	
	@Test
	public void testAddCopy(){		
		for (int i = 1; i < 9; i++) {
			Copy copy = new Copy();
			
			copyService.save(copy);
		}
		for (int i = 1; i < 9; i++) {
			Copy copy = new Copy();
			copyService.save(copy);
		}
	}

}
