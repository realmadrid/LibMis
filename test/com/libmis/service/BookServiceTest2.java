package com.libmis.service;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.Book;

public class BookServiceTest2 {

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
	public void editBook(){
		Book book = bookService.getById(1);
		book.getAuthor();
		book.setRemark("IBM大学合作项目书籍出版资助，推荐学习资料");
		bookService.update(book);
	}
}
