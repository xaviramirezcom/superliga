package ec.com.cloudsolutions.superliga.restapi.api;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/public")
public class PublicResource {
	
	
	
//	@Path("smooth")
//	@GET
//	public Response smooth(
//	        @DefaultValue("2") @QueryParam("step") int step,
//	        @DefaultValue("true") @QueryParam("min-m") boolean hasMin,
//	        @DefaultValue("true") @QueryParam("max-m") boolean hasMax,
//	        @DefaultValue("true") @QueryParam("last-m") boolean hasLast,           
//	        @DefaultValue("blue") @QueryParam("min-color") ColorParam minColor,
//	        @DefaultValue("green") @QueryParam("max-color") ColorParam maxColor,
//	        @DefaultValue("red") @QueryParam("last-color") ColorParam lastColor
//	        ) { ... }
	

	@Path("/user/{username}")
	public UserResource getUserResource(@PathParam("username") String username) {
		return new UserResource(username);
		
	}
	
	@GET
	@Path("/test")
	@Produces(MediaType.APPLICATION_JSON)
	public String getTest() {
		return "bien";
		
	}
	
	
}
