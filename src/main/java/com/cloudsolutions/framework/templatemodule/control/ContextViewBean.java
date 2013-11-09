package com.cloudsolutions.framework.templatemodule.control;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.enterprise.inject.Produces;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

@ViewScoped
@Named
public class ContextViewBean {

	@Inject
	Principal principal;
	private String moduleName;
	private String page;
	private Map<String, String> queryString;

	@Produces
	public List getRegions() {
		return null;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public Map<String, String> getQueryString() {
		return queryString;
	}

	public void setQueryString(Map<String, String> queryString) {
		this.queryString = queryString;
	}

}
