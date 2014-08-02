package com.libmis.action.admin;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Book;
import com.libmis.model.Search;
import com.libmis.model.User;
import com.libmis.service.BookService;
import com.libmis.service.SearchService;
import com.libmis.service.UserService;
import com.libmis.util.Page;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;

@Component("bookSearch")
@Scope("prototype")
public class BookSearchAction extends ActionSupport{

	private List<Book> books;
	private Page page;
	private String query;
	
	private String[] fields;
	
	@Autowired
	private BookService bookService;
	@Autowired
	private SearchService searchService;
	@Autowired
	private UserService userService;

	
	@Override
	public String execute() throws Exception {
		User user=userService.getByName(SpringSecurityUtils.getCurrentUserName());
		if(user!=null){
			Search search=new Search();
			search.setContent(query);
			search.setTime(new Date(System.currentTimeMillis()));
			search.setUser(user);
			searchService.save(search);
		}
		
		if (page == null)
			page = new Page();
		page.setTotalCount(bookService.getSearchResultSize(query,fields));
		books = bookService.search(query, page.getStart(), page.getPageSize(),fields);
		
		return SUCCESS;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public String[] getFields() {
		return fields;
	}

	public void setFields(String[] fields) {
		this.fields = fields;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public SearchService getSearchService() {
		return searchService;
	}

	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
