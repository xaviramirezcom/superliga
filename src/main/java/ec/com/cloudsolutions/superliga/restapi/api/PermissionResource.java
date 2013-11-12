package ec.com.cloudsolutions.superliga.restapi.api;

import javax.ejb.EJB;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.restapi.dto.ResponseDTO;
import ec.com.cloudsolutions.superliga.restapi.dto.UserPermissionInformationDTO;
import ec.com.cloudsolutions.superliga.restapi.enums.ResponseEnum;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.securitymodule.service.UserService;

@Path("/user-permissions")
public class PermissionResource {
	@EJB
	UserService userService;
	
	@GET
	@Path("/{username}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getUserPermission(@PathParam("username") String username) {
		Gson gson = new Gson();
		UserPermissionInformationDTO userPermissionInformationDTO = new UserPermissionInformationDTO();
		ResponseDTO responseDTO = new ResponseDTO();
		userPermissionInformationDTO.setResponseDTO(responseDTO);
		if(username!=null){
			try {
				User user = userService.findByUsernameWithPermissions(username);
				responseDTO.setStatusCode(ResponseEnum.SUCCESS.getCode());
				responseDTO.setStatusMessage(ResponseEnum.SUCCESS.getMessage());
				userPermissionInformationDTO.setUser(user);
				
			} catch (NotFoundException e) {
				e.printStackTrace();
				responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
				responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND.getMessage());
			}
		}else{
			responseDTO.setStatusCode(ResponseEnum.NOT_FOUND.getCode());
			responseDTO.setStatusMessage(ResponseEnum.NOT_FOUND.getMessage());
		}
		return gson.toJson(userPermissionInformationDTO);
	}
}
