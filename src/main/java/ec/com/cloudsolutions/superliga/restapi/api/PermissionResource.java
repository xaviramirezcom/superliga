package ec.com.cloudsolutions.superliga.restapi.api;

import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.restapi.dto.ResponseDTO;
import ec.com.cloudsolutions.superliga.restapi.dto.UserPermissionInformationDTO;
import ec.com.cloudsolutions.superliga.restapi.enums.ResponseEnum;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.securitymodule.service.UserService;

@Stateless
@LocalBean
public class PermissionResource {
	@EJB
	UserService userService;
	
	private String username;

	public PermissionResource() {
	}

	public PermissionResource(String username) {
		super();
		this.username = username;
	}

	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public String getPermission() {
		Gson gson = new Gson();
		UserPermissionInformationDTO userPermissionInformationDTO = new UserPermissionInformationDTO();
		ResponseDTO responseDTO = new ResponseDTO();
		userPermissionInformationDTO.setResponseDTO(responseDTO);
		if (username != null) {
			try {
				System.out.println("***********" + username);
				if(userService==null){
					System.out.println("nulo");
				}
				User user = userService.findByUsernameWithPermissions(username);
				responseDTO.setStatusCode(ResponseEnum.SUCCESS.getCode());
				responseDTO.setStatusMessage(ResponseEnum.SUCCESS.getMessage());
				userPermissionInformationDTO.setUser(user);

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
		return gson.toJson(userPermissionInformationDTO);
	}

	@GET
	@Path("/test")
	@Produces(MediaType.APPLICATION_JSON)
	public String getTest() {
		return "bien";

	}
}
