package com.libmis.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.BookDAO;
import com.libmis.dao.BorrowDAO;
import com.libmis.dao.CopyDAO;
import com.libmis.dao.FaultDAO;
import com.libmis.model.Book;
import com.libmis.model.Borrow;
import com.libmis.model.Copy;
import com.libmis.model.Fault;
import com.libmis.service.CopyService;

@Component("copyService")
public class CopyServiceImpl implements CopyService{

	@Autowired
	private BookDAO bookDAO;
	@Autowired
	private CopyDAO copyDAO;
	@Autowired
	private BorrowDAO borrowDAO;
	@Autowired
	private FaultDAO faultDAO;

	@Override
	public void delete(Copy copy,int bookId) {
		Book book=bookDAO.getById(bookId);
		copy=copyDAO.getById(copy.getId());
		book.getCopys().remove(copy);
		bookDAO.update(book);
		
		List<Borrow> borrows=borrowDAO.listByIdCopyId(copy.getId());
		for(Borrow b:borrows){
			b.setHaveReturned(true);
			b.setCopy(null);
			borrowDAO.update(b);
		}
		List<Fault> faults=faultDAO.listByIdCopyId(copy.getId());
		for(Fault b:faults){
			b.setCopy(null);
			faultDAO.update(b);
		}
		
		copyDAO.delete(copy);
	}

	@Override
	public Copy getById(int id) {
		return copyDAO.getById(id);
	}

	@Override
	public Serializable save(Copy copy,String isbn) {
		Book book=bookDAO.getByIsbn(isbn);
		if(book==null)
			return 0;
		copy.setEntertime(new Date(System.currentTimeMillis()));
        copy.setStatus("正常");
        copy.setLogoff(false);
        copy.setBorrowed(false);
        copy.setBook(book);
        if(copyDAO.getByBarcode(copy.getBarcode())!=null)
        	return 0;
		Serializable id = copyDAO.save(copy);
		book.getCopys().add(copy);
		bookDAO.update(book);
		return id;
	}

	@Override
	public void update(Copy copy) {
		copyDAO.update(copy);
		
	}
	
	@Override
	public void update(Set<Copy> copys) {
		for(Copy copy : copys){
			
			copyDAO.update(copy);
		}
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public CopyDAO getCopyDAO() {
		return copyDAO;
	}

	public void setCopyDAO(CopyDAO copyDAO) {
		this.copyDAO = copyDAO;
	}

	public BorrowDAO getBorrowDAO() {
		return borrowDAO;
	}

	public void setBorrowDAO(BorrowDAO borrowDAO) {
		this.borrowDAO = borrowDAO;
	}

	public FaultDAO getFaultDAO() {
		return faultDAO;
	}

	public void setFaultDAO(FaultDAO faultDAO) {
		this.faultDAO = faultDAO;
	}

}
