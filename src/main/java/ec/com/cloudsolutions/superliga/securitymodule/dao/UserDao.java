/*
 */
package ec.com.cloudsolutions.superliga.securitymodule.dao;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import ec.com.cloudsolutions.superliga.persistencemodule.dao.GenericDao;
import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import static ec.com.cloudsolutions.superliga.persistencemodule.util.QueryParameter.with;
/**
 * @author xavier
 * 
 */
@Stateless
@LocalBean
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class UserDao extends GenericDao<User, Integer> {

	public UserDao() {
		super(User.class);

	}

	/**
	 * @param username
	 * @return
	 * @throws NotFoundException
	 */
	public List<User> findByUsername(String username)
			throws NotFoundException {
		return findByNamedQuery("User.findByUsername",
				with("username", username).parameters());
	}

	/**
	 * @param email
	 * @return
	 * @throws NotFoundException
	 */
	public List<User> findByEmail(String email) throws NotFoundException {
		return findByNamedQuery("User.findByEmail", with("email", email)
				.parameters());
	}
}
