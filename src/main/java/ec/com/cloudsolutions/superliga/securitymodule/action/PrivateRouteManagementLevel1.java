package ec.com.cloudsolutions.superliga.securitymodule.action;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

import com.ocpsoft.pretty.faces.annotation.URLMapping;
import com.ocpsoft.pretty.faces.annotation.URLMappings;

@Named
@RequestScoped
@URLMappings(mappings = {
		@URLMapping(id = "editUserProfile1", pattern = "/user/#{requestParametersDM.pageInformationOwner}", viewId = "/pages/user-profile.jsf"),
		@URLMapping(id = "editUserProfile2", pattern = "/user/#{requestParametersDM.pageInformationOwner}/", viewId = "/pages/user-profile.jsf") })
public class PrivateRouteManagementLevel1 {

}
