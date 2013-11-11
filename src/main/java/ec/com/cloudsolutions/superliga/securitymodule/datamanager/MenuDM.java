package ec.com.cloudsolutions.superliga.securitymodule.datamanager;

import java.awt.List;
import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@Named
@SessionScoped
public class MenuDM implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List permissions;
}
