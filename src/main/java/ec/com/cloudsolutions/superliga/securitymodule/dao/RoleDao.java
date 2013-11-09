/*
 */
package ec.com.cloudsolutions.superliga.securitymodule.dao;

import static ec.com.cloudsolutions.superliga.persistencemodule.util.QueryParameter.with;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import ec.com.cloudsolutions.superliga.persistencemodule.dao.GenericDao;
import ec.com.cloudsolutions.superliga.persistencemodule.exceptions.NotFoundException;
import ec.com.cloudsolutions.superliga.securitymodule.entities.Role;

/**
 * @author xavier
 * 
 */
@Stateless
@LocalBean
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class RoleDao extends GenericDao<Role, Integer> {

	public RoleDao() {
		super(Role.class);

	}

	/**
	 * @param active
	 * @return
	 * @throws NotFoundException
	 */
	public List<Role> findAll(ArrayList<Boolean> active)
			throws NotFoundException {
		return findByNamedQuery("Role.findAll", with("active", active)
				.parameters());
	}
}
