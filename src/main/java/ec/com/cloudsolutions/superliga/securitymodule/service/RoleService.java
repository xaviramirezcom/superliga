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
import ec.com.cloudsolutions.superliga.securitymodule.dao.RoleDao;
import ec.com.cloudsolutions.superliga.securitymodule.entities.Permission;
import ec.com.cloudsolutions.superliga.securitymodule.entities.Role;

/**
 * @author xavier
 * 
 */
@Stateless
@LocalBean
@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
public class RoleService {

	@EJB
	RoleDao roleDao;
	@EJB
	PermissionDao permissionDao;

	/**
	 * @return
	 * @throws NotFoundException
	 */
	public List<Role> findAll() throws NotFoundException {

		ArrayList<Boolean> activeList = new ArrayList<Boolean>();
		activeList.add(true);

		return roleDao.findAll(activeList);
	}

	/**
	 * @param roleId
	 * @param permissionIdList
	 * @return
	 * @throws NotSaveException
	 * @throws NotFoundException
	 */
	public Role saveRoleWithPermissions(Integer roleId,
			List<Integer> permissionIdList) throws NotSaveException,
			NotFoundException {

		ArrayList<Boolean> activeList = new ArrayList<Boolean>();
		activeList.add(true);

		List<Permission> permissionList = permissionDao.findByIdList(
				permissionIdList, activeList);

		Role role = roleDao.findById(roleId);
		role.setPermissions(permissionList);
		Role savedRole = roleDao.update(role);
		if (savedRole != null && savedRole.getPermissions() != null) {
			// For avoiding LazyInitializationException
			savedRole.getPermissions().size();
		}
		return savedRole;

	}
}
