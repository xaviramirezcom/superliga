package ec.com.cloudsolutions.superliga.restapi.api;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

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
	UserService userService;
	
	private String username;

	public PermissionResource() {
	}

	public PermissionResource(String username) {
		super();
		this.username = username;
//		try {
//			userService = (UserService)serviceLocator.getService("java:global/superliga/UserService!ejb.UserService");
//		} catch (ServiceLocatorException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
	}

	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getPermission() {
		Gson gson = new Gson();
		UserPermissionInformationDTO userPermissionInformationDTO = new UserPermissionInformationDTO();
		ResponseDTO responseDTO = new ResponseDTO();
		userPermissionInformationDTO.setResponseDTO(responseDTO);
		if (username != null) {
			try {
				System.out.println("***********" + username);
				userService=getUserService();
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
//		return gson.toJson(userPermissionInformationDTO);
		return Response.status(200).entity("bien").build();
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
