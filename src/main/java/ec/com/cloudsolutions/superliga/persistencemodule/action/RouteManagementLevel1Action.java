package ec.com.cloudsolutions.superliga.persistencemodule.action;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

import com.ocpsoft.pretty.faces.annotation.URLMapping;
import com.ocpsoft.pretty.faces.annotation.URLMappings;

@Named
@RequestScoped
@URLMappings(mappings = {
		@URLMapping(id = "editUserProfile1", pattern = "/#{routeManagementLevel1Action.permissionName}/#{routeManagementLevel1Action.id}", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "editUserProfile2", pattern = "/#{routeManagementLevel1Action.permissionName}/#{routeManagementLevel1Action.id}/", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "editUserProfile1", pattern = "/#{routeManagementLevel1Action.permissionName}/", viewId = "/pages/main-page.jsf"),
		@URLMapping(id = "editUserProfile2", pattern = "/#{routeManagementLevel1Action.permissionName}", viewId = "/pages/main-page.jsf")})
public class RouteManagementLevel1Action {
	
	private String permissionName;
	private String id;
	
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
