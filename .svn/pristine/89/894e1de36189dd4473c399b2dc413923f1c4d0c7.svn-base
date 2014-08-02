package com.libmis.dao;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.libmis.model.Search;
import com.libmis.model.User;
import com.libmis.service.BookService;
import com.libmis.util.SpringSecurityUtils;

public class SearchJdbcImplTest {

	private static ApplicationContext context;
	private static SearchDAO searchDAO;

	@BeforeClass
	public static void beforeClass() {
		context = new ClassPathXmlApplicationContext(
				"applicationContext-core.xml");
		searchDAO = (SearchDAO) context.getBean("searchDAOJdbc");
	}

	@Test
	public void testAdd() {

		User user = new User();
		user.setId(3);
		Search search = new Search();
		search.setContent("wocao");
		search.setTime(new Date(System.currentTimeMillis()));
		search.setUser(user);
		System.out.println(searchDAO.save(search));
	}

}
