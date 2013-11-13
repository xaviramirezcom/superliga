package ec.com.cloudsolutions.superliga.restapi.dto;

public class ResponseDTO  {

	private Integer statusCode;
	private String statusMessage;
	private Object object;
	
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
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	} 
	
	
	
}
