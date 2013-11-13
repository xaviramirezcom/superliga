package ec.com.cloudsolutions.superliga.securitymodule.enums;

public enum PermissionNameEnum {

	HOME("Home"), CLUB("Club"), CHAMPIONSHIP("Championship"), PROFILE("Profile"), REFEREE_MANAGEMENT(
			"Referee Management"), CHAMPIONSHIP_MANAGEMENT(
			"Championship Management"), NOTIFICATIONS("Notifications"), NEWS(
			"News"), SEARCH("Search"), CLUB_MANAGEMENT("Club Management"), REGISTRATION(
			"Registrations"), ;

	private final String name;

	private PermissionNameEnum(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

}
