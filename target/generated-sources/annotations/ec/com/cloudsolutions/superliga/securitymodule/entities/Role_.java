package ec.com.cloudsolutions.superliga.securitymodule.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Role.class)
public abstract class Role_ {

	public static volatile SingularAttribute<Role, Integer> id;
	public static volatile ListAttribute<Role, User> users;
	public static volatile SingularAttribute<Role, String> description;
	public static volatile ListAttribute<Role, Permission> permissions;
	public static volatile SingularAttribute<Role, Boolean> active;
	public static volatile SingularAttribute<Role, String> roleName;

}

