package ec.com.cloudsolutions.superliga.restapi.dto;

import ec.com.cloudsolutions.superliga.securitymodule.entities.User;

public class UserPermissionInformationDTO  {

	private ResponseDTO responseDTO;
	private User user;

	public ResponseDTO getResponseDTO() {
		return responseDTO;
	}
	public void setResponseDTO(ResponseDTO responseDTO) {
		this.responseDTO = responseDTO;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
