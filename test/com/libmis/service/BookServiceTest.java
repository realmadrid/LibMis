package com.libmis.service;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.Book;
import com.libmis.model.Copy;

public class BookServiceTest {
	
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
	public void testAdd(){
		for (int i = 0; i < 100; i++) {
			Book book=new Book();
			book.setName("书"+i);
			bookService.save(book);
		}
	}
	
	@Test
	public void testAddBook(){
		Book book1=new Book(); 
		book1.setName("J2EE应用开发实例精解");
		book1.setAuthor("吴镝");
		book1.setCategory("计算机");
		book1.setLanguage("中文");
		book1.setPublisher("清华大学出版社");
		book1.setPubtime("2011");
		book1.setIsbn("978-7-302-24117-1");
		book1.setPrice(25);
		book1.setRemark("IBM大学合作项目书籍出版资助");
		bookService.save(book1);
		Set<Copy> copys1 = new HashSet<Copy>();
		for (int i = 1; i < 6; i++) {
			Copy copy = new Copy();
			copy.setBarcode("CB0202916"+i);
			copy.setBookshelf("计算机/编程");
			copy.setEntertime(new Date());
			copy.setStatus("可借");
			copyService.save(copy, book1.getIsbn());
			copys1.add(copy);
		}
		book1.setCopys(copys1);
		bookService.update(book1);
		
		Book book2=new Book(); 
		book2.setName("J2EE web核心技术:Web组件与框架开发技术 ");
		book2.setAuthor("杨少波");
		book2.setCategory("计算机");
		book2.setLanguage("中文");
		book2.setPublisher("清华大学出版社");
		book2.setPubtime("2011");
		book2.setIsbn("978-7-302-23349-7");
		book2.setPrice(39);
		bookService.save(book2);
		Set<Copy> copys2 = new HashSet<Copy>();
		for (int i = 1; i < 5; i++) {
			Copy copy = new Copy();
			copy.setBarcode("CB0205273"+i);
			copy.setBookshelf("计算机/编程");
			copy.setEntertime(new Date());
			copy.setStatus("可借");
			copyService.save(copy,book2.getIsbn());
			copys2.add(copy);
		}
		book2.setCopys(copys2);
		bookService.update(book2);
	}

	

}
