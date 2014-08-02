package com.libmis.action.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Search;
import com.libmis.model.User;
import com.libmis.service.SearchService;
import com.libmis.util.Page;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;

@Component("searchHistory")
@Scope("prototype")
public class SearchHistoryAction extends ActionSupport{
	
	private List<Search> searchs;
	
	private Page page;
	
	@Autowired
	private SearchService searchService;
	
	@Override
	public String execute() throws Exception {
		if(page==null)
			page=new Page();
		searchs = searchService.listByUsername(SpringSecurityUtils.getCurrentUserName(), page.getStart(), page.getPageSize());
		return SUCCESS;
	}

	public List<Search> getSearchs() {
		return searchs;
	}

	public void setSearchs(List<Search> searchs) {
		this.searchs = searchs;
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

}
