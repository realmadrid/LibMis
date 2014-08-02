package com.libmis.action.front;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Book;
import com.libmis.model.Copy;
import com.libmis.service.BookService;
import com.libmis.service.CopyService;
import com.opensymphony.xwork2.ActionSupport;

@Component("bookInfo")
@Scope("prototype")
public class BookInfoAction extends ActionSupport {

	private Book book;

	private Set<Copy> copys;

	@Autowired
	private BookService bookService;

	@Override
	public String execute() throws Exception {
		book = bookService.getById(book.getId());
		copys =  book.getCopys();
		return SUCCESS;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Set<Copy> getCopys() {
		return copys;
	}

	public void setCopys(Set<Copy> copys) {
		this.copys = copys;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

}
