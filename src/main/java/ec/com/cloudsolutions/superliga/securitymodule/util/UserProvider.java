package ec.com.cloudsolutions.superliga.securitymodule.util;

import java.security.Principal;

import javax.ejb.EJB;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.securitymodule.service.UserService;

/**
 * 
 * @author adam-bien.com
 */
public class UserProvider {

	@Inject
	Principal principal;
	@EJB
	UserService userService;

	/**
	 * @return
	 */
	@Produces
	@LoggedUser
	public User fetch() {
		User user;
		System.out.println("usuario anonimo:" + principal.getName());
		try {
			user = userService
					.findByUsernameWithPermissions(principal.getName());
			return user;
		} catch (NotFoundException e) {
			e.printStackTrace();
			return null;
		}
	}
}
