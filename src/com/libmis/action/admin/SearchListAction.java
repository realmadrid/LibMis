package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Search;
import com.libmis.service.SearchService;
import com.libmis.util.Page;
import com.opensymphony.xwork2.ActionSupport;

@Component("searchList")
@Scope("prototype")
public class SearchListAction extends ActionSupport{
	
	private List<Search> searches;
	
	private Page page;
	
	@Autowired
	private SearchService searchService;
	
	@Override
	public String execute() throws Exception {
		if (page == null)
			page = new Page();
		page.setTotalCount(searchService.getResultSize());
		searches=searchService.list(page.getStart(),page.getPageSize());
		return SUCCESS;
	}

	public List<Search> getSearchs() {
		return searches;
	}

	public void setSearchs(List<Search> searchs) {
		this.searches = searchs;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public SearchService getSearchService() {
		return searchService;
	}

	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}

	public List<Search> getSearches() {
		return searches;
	}

	public void setSearches(List<Search> searches) {
		this.searches = searches;
	}
}
