package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Book;
import com.libmis.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

@Component("bookAdd")
@Scope("prototype")
public class BookAddAction extends ActionSupport{
	
	private Book book;
	
	@Autowired
	private BookService bookService;
	
	@Override
	public String execute() throws Exception {
		int result=bookService.save(book).hashCode();
		if(result==0)
			return ERROR;
		return SUCCESS;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
}
