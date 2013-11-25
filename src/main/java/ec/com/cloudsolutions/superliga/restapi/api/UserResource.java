package ec.com.cloudsolutions.superliga.restapi.api;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

public class UserResource {

	private String username;
	
	
	public UserResource() {
		
	}
	
	public UserResource(String username) {
		super();
		this.username = username;
	}
	
	@Path("/permissions")
	public PermissionResource getPermissionResource() {
		return new PermissionResource(username);
		
	}
	
	@GET
	@Path("/test")
	@Produces(MediaType.APPLICATION_JSON)
	public String getTest() {
		return "bien";
		
	}
}
