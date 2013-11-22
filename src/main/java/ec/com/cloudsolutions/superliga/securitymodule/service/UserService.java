/*
 */
package ec.com.cloudsolutions.superliga.securitymodule.service;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotSaveException;
import ec.com.cloudsolutions.superliga.securitymodule.dao.PermissionDao;
import ec.com.cloudsolutions.superliga.securitymodule.dao.UserDao;
import ec.com.cloudsolutions.superliga.securitymodule.entities.Permission;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;
import ec.com.cloudsolutions.superliga.util.ParametersConstants;

/**
 * @author xavier
 * 
 */
@Stateless
@LocalBean
@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
public class UserService {

	@EJB
	UserDao userDao;
	@EJB
	PermissionDao permissionDao;

	/**
	 * @param username
	 * @return
	 * @throws NotFoundException
	 */
	public Integer findIdByUsername(String username) throws NotFoundException {
		List<User> foundClients = userDao.findByUsername(username);
		if (foundClients != null && !foundClients.isEmpty()) {
			return foundClients.get(0).getId();
		}
		return null;
	}

	/**
	 * @param username
	 * @return
	 * @throws NotFoundException
	 */
	public User findUserByUsername(String username) throws NotFoundException {
		List<User> foundClients = userDao.findByUsername(username);
		return foundClients.get(0);
	}

	/**
	 * @param user
	 * @return
	 * @throws NotSaveException
	 */
	public User saveUser(User user) throws NotSaveException {

		return null;
	}

	/**
	 * @param user
	 * @return
	 * @throws NotFoundException
	 */
	public Boolean isValidUsername(User user) throws NotFoundException {
		if (user != null && user.getUsuario() != null
				&& !user.getUsuario().isEmpty()) {
			List<User> resultList = userDao.findByUsername(user.getUsuario());
			if (user.getId() != null) {
				User userFinded = userDao.findById(user.getId());
				if (userFinded.getUsuario().equals(user.getUsuario())) {
					return true;
				}
			}
			return resultList == null || resultList.isEmpty();
		}
		return false;

	}

	/**
	 * @param user
	 * @return
	 * @throws NotFoundException
	 */
	public Boolean isValidEmail(User user) throws NotFoundException {
		if (user != null && user.getEmail() != null
				&& !user.getEmail().isEmpty()) {
			List<User> resultList = userDao.findByEmail(user.getEmail());
			if (user.getId() != null) {
				User userFinded = userDao.findById(user.getId());
				if (userFinded.getEmail().equals(user.getEmail())) {
					return true;
				}
			}
			return resultList == null || resultList.isEmpty();
		}
		return false;
	}

	/**
	 * @param password
	 * @param reTypedPassword
	 * @return
	 */
	public Boolean isValidPassword(User user) {
		if (user != null && user.getClave() != null
				&& !user.getClave().isEmpty()
				&& user.getClave().equals(user.getReTypePasssword())) {
			return true;
		}
		return false;

	}

	/**
	 * @param username
	 * @return
	 * @throws NotFoundException
	 */
	public User findByUsernameWithPermissions(String username)
			throws NotFoundException {
		System.out.println("------------"+username);
		if (username != null && username.equals(ParametersConstants.ANONYMOUS)) {
			User user = new User();
			user.setUsuario(username);
			ArrayList<Boolean> activeList = new ArrayList<Boolean>();
			activeList.add(true);
			user.setPermissions(permissionDao.findByRole(username, activeList));
			System.out.println("entro al anonimo");
			return user;
		}

		List<User> users = userDao.findByUsername(username);
		System.out.println("************************************************************");
		System.out.println(username);
		System.out.println(users.size());
		User user = null;
		List<Permission> permissions = null;
		if (users != null && !users.isEmpty()) {
			ArrayList<Boolean> activeList = new ArrayList<Boolean>();
			activeList.add(true);
			permissions = permissionDao.findByUsername(username, activeList);
			if (permissions != null && !permissions.isEmpty()) {
				user = users.get(0);
				user.setPermissions(permissions);
			}else{
				System.out.println("No tiene permisos");
			}
		}

		return user;

	}

}
