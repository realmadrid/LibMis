package com.libmis.service.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.search.SearchException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.BookDAO;
import com.libmis.dao.BorrowDAO;
import com.libmis.dao.CopyDAO;
import com.libmis.dao.FaultDAO;
import com.libmis.dao.SearchDAO;
import com.libmis.dao.UserDAO;
import com.libmis.model.Book;
import com.libmis.model.Borrow;
import com.libmis.model.Copy;
import com.libmis.model.Fault;
import com.libmis.service.BookService;

@Component("bookService")
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookDAO bookDAO;
	@Autowired
	private CopyDAO copyDAO;
	@Autowired
	private BorrowDAO borrowDAO;
	@Autowired
	private FaultDAO faultDAO;


	@Override
	public void delete(Book book) {
		book=bookDAO.getById(book.getId());
		for(Copy copy:book.getCopys()){
			List<Borrow> borrows=borrowDAO.listByIdCopyId(copy.getId());
			for(Borrow b:borrows){
				b.setCopy(null);
				b.setHaveReturned(true);
				borrowDAO.update(b);
			}
			List<Fault> faults=faultDAO.listByIdCopyId(copy.getId());
			for(Fault b:faults){
				b.setCopy(null);
				faultDAO.update(b);
			}
			copyDAO.delete(copy);
		}
		bookDAO.delete(book);
	}

	@Override
	public Book getById(int id) {
		return bookDAO.getById(id);
	}

	@Override
	public int getSearchResultSize(String query, String... fields) {
		int size;
		try {
			size = bookDAO.getSearchResultSize(query,fields);
		} catch (SearchException e) {
			size = bookDAO.getResultSize();
		}
		return size;
	}

	@Override
	public Serializable save(Book book) {
		if(bookDAO.getByIsbn(book.getIsbn())!=null)
			return 0;
		return bookDAO.save(book);
	}

	@Override
	public List<Book> search(String query, int startResult, int maxResult,
			String... fields) {
		List<Book> list;
		try {
			list = bookDAO.search(query, startResult, maxResult,fields);
		} catch (SearchException e) {
			list = bookDAO.list(startResult, maxResult);
		}
		return list;
	}

	@Override
	public void update(Book book) {
		bookDAO.update(book);
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
