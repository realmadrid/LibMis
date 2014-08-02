package com.libmis.model;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ModelTest {
	
	@Test
	public void testInitIndex(){
		ApplicationContext contex = new ClassPathXmlApplicationContext("applicationContext-core.xml");
		SessionFactory sf=(SessionFactory) contex.getBean("sessionFactory");
		FullTextSession fullTextSession = Search.getFullTextSession(sf.openSession());
		try {
			fullTextSession.createIndexer().startAndWait();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSchemaExport() {
		new SchemaExport(new Configuration().configure()).create(true,true);
	}

}
