package ec.com.cloudsolutions.superliga.restapi.util;

import ec.com.cloudsolutions.superliga.restapi.exceptions.ServiceLocatorException;



public class BaseResource {
	
	protected ServiceLocator serviceLocator;
	
	public BaseResource() {
		try {
			serviceLocator =ServiceLocator.getInstance();
		} catch (ServiceLocatorException e) {
			e.printStackTrace();
		}
	}

	public ServiceLocator getServiceLocator() {
		return serviceLocator;
	}

	public void setServiceLocator(ServiceLocator serviceLocator) {
		this.serviceLocator = serviceLocator;
	}
	    
	    
	    
	    
}