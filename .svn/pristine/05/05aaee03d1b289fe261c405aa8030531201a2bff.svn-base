package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Book;
import com.libmis.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

@Component("bookEdit")
@Scope("prototype")
public class BookEditAction extends ActionSupport{
	
	private Book book;
	
	@Autowired
	private BookService bookService;
	
	@Override
	public String execute() throws Exception {
		bookService.update(book);
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
