package ec.com.cloudsolutions.superliga.securitymodule.action;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

import com.ocpsoft.pretty.faces.annotation.URLAction;
import com.ocpsoft.pretty.faces.annotation.URLMapping;
import com.ocpsoft.pretty.faces.annotation.URLMappings;

@Named
@RequestScoped
@URLMappings(mappings = {
		@URLMapping(id = "mainPage1", pattern = "/content/#{routeManagementAction.permissionName}/#{routeManagementAction.id}", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "mainPage2", pattern = "/content/#{routeManagementAction.permissionName}/#{routeManagementAction.id}/", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "mainPage3", pattern = "/content/#{routeManagementAction.permissionName}/", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "mainPage4", pattern = "/content/#{routeManagementAction.permissionName}", viewId = "/pages/main-page.jsf")})
public class RouteManagementAction {
	
	private String permissionName;
	private String id;
	
	@URLAction(onPostback = false) 
	public String init(){
		System.out.println("algo hace");
		return null;
	}
	
	public String getPermissionName() {
		return permissionName;
	}
	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	

}
