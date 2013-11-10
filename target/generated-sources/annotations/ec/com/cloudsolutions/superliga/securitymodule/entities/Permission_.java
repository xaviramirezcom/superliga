package ec.com.cloudsolutions.superliga.securitymodule.entities;

import ec.com.cloudsolutions.superliga.securitymodule.enums.MenuTypeEnum;
import ec.com.cloudsolutions.superliga.securitymodule.enums.PermissionNameEnum;
import ec.com.cloudsolutions.superliga.securitymodule.enums.PermissionTypeEnum;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Permission.class)
public abstract class Permission_ {

	public static volatile SingularAttribute<Permission, Integer> id;
	public static volatile ListAttribute<Permission, Role> roles;
	public static volatile SingularAttribute<Permission, MenuTypeEnum> menuTypeEnum;
	public static volatile ListAttribute<Permission, Permission> permissions;
	public static volatile SingularAttribute<Permission, PermissionTypeEnum> permissionTypeEnum;
	public static volatile SingularAttribute<Permission, PermissionNameEnum> permissionNameEnum;
	public static volatile SingularAttribute<Permission, Boolean> active;
	public static volatile SingularAttribute<Permission, Permission> permission;

}

