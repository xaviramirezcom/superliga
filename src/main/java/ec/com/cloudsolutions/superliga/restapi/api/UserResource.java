package ec.com.cloudsolutions.superliga.restapi.api;

import java.security.Principal;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.restapi.dto.PermissionDTO;
import ec.com.cloudsolutions.superliga.restapi.dto.ResponseDTO;
import ec.com.cloudsolutions.superliga.restapi.enums.ResponseEnum;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.securitymodule.service.UserService;

@Path("/user")
public class UserResource {
	@EJB
	UserService userService;
	@Inject
	private Principal principal;
	
	
	@GET
	@Path("/permissions")
	@Produces(MediaType.APPLICATION_JSON)
	public String getUserPermission() {
		String username = principal.getName();
		Gson gson = new Gson();
		ResponseDTO responseDTO = new ResponseDTO();
		if(username!=null){
			try {
				User user = userService.findByUsernameWithPermissions(username);
				responseDTO.setStatusCode(ResponseEnum.SUCCESS.getCode());
				responseDTO.setStatusMessage(ResponseEnum.SUCCESS.getMessage());
				responseDTO.setObject(PermissionDTO.convertList(user.getPermissions()));
				
			} catch (NotFoundException e) {
				e.printStackTrace();
				responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
				responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND.getMessage());
			}
		}else{
			responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
			responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND.getMessage());
		}
		return gson.toJson(responseDTO);
	}
	
	
}
