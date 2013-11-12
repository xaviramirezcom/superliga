package ec.com.cloudsolutions.superliga.restapi.enums;

public enum ResponseEnum {

	SUCCESS(200, "Success"), NOT_FOUND(404, "Not Found");

	private final Integer code;
	private final String message;

	private ResponseEnum(Integer code, String message) {
		this.code = code;
		this.message = message;
	}

	public Integer getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

	

}
