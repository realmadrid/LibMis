package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.CopyDAO;
import com.libmis.model.Copy;
import com.libmis.util.MyHibernateTemplate;

@Component("copyDAO")
public class CopyDAOImpl implements CopyDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(Copy copy) {
		this.hibernateTemplate.delete(copy);
	}

	@Override
	public Copy getById(int id) {
		return this.hibernateTemplate.load(Copy.class, id);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Copy getByBarcode(String barcode) {
		List<Copy> list=this.hibernateTemplate.find("from Copy c where c.barcode=?",barcode);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public Serializable save(Copy copy) {
		return this.hibernateTemplate.save(copy);
	}

	@Override
	public void update(Copy copy) {
		this.hibernateTemplate.update(copy);
	}
}
