package ec.com.cloudsolutions.superliga.securitymodule.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, Integer> id;
	public static volatile SingularAttribute<User, String> username;
	public static volatile SingularAttribute<User, String> email;
	public static volatile ListAttribute<User, Role> roles;
	public static volatile ListAttribute<User, Company> companies;
	public static volatile SingularAttribute<User, Boolean> active;
	public static volatile ListAttribute<User, Company> contactCompanies;
	public static volatile SingularAttribute<User, String> password;

}

