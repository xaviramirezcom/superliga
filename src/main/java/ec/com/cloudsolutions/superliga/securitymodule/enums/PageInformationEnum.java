package ec.com.cloudsolutions.superliga.securitymodule.enums;
public enum PageInformationEnum {

	NEW("New"), SYSTEM("System"), OWNER("Owner");

	private final String name;

	private PageInformationEnum(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

}
