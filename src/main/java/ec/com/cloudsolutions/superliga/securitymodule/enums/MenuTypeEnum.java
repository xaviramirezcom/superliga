package ec.com.cloudsolutions.superliga.securitymodule.enums;

public enum MenuTypeEnum {

	STATIC_LINK("Menu"), DYNAMIC_LINK("Dynamic Link");

	private final String name;

	private MenuTypeEnum(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

}
