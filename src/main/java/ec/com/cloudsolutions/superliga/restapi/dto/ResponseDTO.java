package ec.com.cloudsolutions.superliga.restapi.dto;

public class ResponseDTO  {

	private Integer statusCode;
	private String statusMessage;
	
	public Integer getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(Integer statusCode) {
		this.statusCode = statusCode;
	}
	public String getStatusMessage() {
		return statusMessage;
	}
	public void setStatusMessage(String statusMessage) {
		this.statusMessage = statusMessage;
	} 
	
	
}
