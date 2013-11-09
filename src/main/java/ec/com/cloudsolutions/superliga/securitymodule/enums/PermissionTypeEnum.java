package ec.com.cloudsolutions.superliga.securitymodule.enums;

public enum PermissionTypeEnum {

	READ("Lectura"), WRITE("Escritura");

	private final String name;

	private PermissionTypeEnum(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

}
