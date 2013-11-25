package ec.com.cloudsolutions.superliga.restapi.api;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.restapi.dto.PermissionDTO;
import ec.com.cloudsolutions.superliga.restapi.dto.ResponseDTO;
import ec.com.cloudsolutions.superliga.restapi.enums.ResponseEnum;
import ec.com.cloudsolutions.superliga.restapi.util.BaseResource;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.securitymodule.service.UserService;

public class PermissionResource{
	
	private String username;

	public PermissionResource() {
	}

	public PermissionResource(String username) {
		this.username = username;
			
	}

	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public String getPermission() {
		Gson gson = new Gson();
		ResponseDTO responseDTO = new ResponseDTO();
		if (username != null) {
			try {
				User user = getUserService().findByUsernameWithPermissions(username);
				responseDTO.setStatusCode(ResponseEnum.SUCCESS.getCode());
				responseDTO.setStatusMessage(ResponseEnum.SUCCESS.getMessage());
				responseDTO.setObject(PermissionDTO.convertList(user.getPermissions()));

			} catch (NotFoundException e) {
				e.printStackTrace();
				responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
				responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND
						.getMessage());
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
			responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND.getMessage());
		}
		return gson.toJson(responseDTO);
	}

	@GET
	@Path("/test")
	@Produces(MediaType.APPLICATION_JSON)
	public String getTest() {
		return "bien";

	}
	
	private UserService getUserService() {
        try {
            javax.naming.Context c = new InitialContext();
            return (UserService) c.lookup("java:global/superliga/UserService");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
