package ec.com.cloudsolutions.superliga.securitymodule.util;

import java.lang.reflect.Method;
import java.util.List;

import javax.enterprise.inject.Instance;
import javax.inject.Inject;
import javax.interceptor.AroundInvoke;
import javax.interceptor.InvocationContext;

import ec.com.cloudsolutions.superliga.securitymodule.datamanager.RequestParametersDM;
import ec.com.cloudsolutions.superliga.securitymodule.entities.Permission;
import ec.com.cloudsolutions.superliga.securitymodule.entities.User;

/**
 * @author xavier
 * 
 */
public class Guard {

	@Inject
	@LoggedUser
	Instance<User> users;
	@Inject
	RequestParametersDM requestParametersDM;

	@AroundInvoke 
	public Object validatePermissions(InvocationContext ic)
			throws Exception {
		Method method = ic.getMethod();
		User user = users.get();
		if (user == null || !isAllowed(method, user)) {
			throw new SecurityException(
					"User  is not allowed to execute the method " + method);
		}
		return ic.proceed();
	}

	/**
	 * @param method
	 * @param u
	 * @return
	 */
	boolean isAllowed(Method method, User u) {
		AllowedPermission annotation = method
				.getAnnotation(AllowedPermission.class);
		if (annotation == null) {
			return true;
		}
		List<Permission> permissions = u.getPermissions();
		if (permissions != null && !permissions.isEmpty()) {
			for (Permission permission : permissions) {
				return true;
			}
		}
		return false;
	}
}
