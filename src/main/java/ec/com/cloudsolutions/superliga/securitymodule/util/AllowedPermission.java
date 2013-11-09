package ec.com.cloudsolutions.superliga.securitymodule.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import ec.com.cloudsolutions.superliga.securitymodule.enums.PageInformationEnum;
import ec.com.cloudsolutions.superliga.securitymodule.enums.PermissionNameEnum;

/**
 * @author xavier
 * 
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface AllowedPermission {
	/**
	 * @return
	 */
	PermissionNameEnum permissionNameEnum();

	PageInformationEnum pageInformationEnum();

}
