package ec.com.cloudsolutions.superliga.securitymodule.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Company.class)
public abstract class Company_ {

	public static volatile SingularAttribute<Company, Integer> id;
	public static volatile ListAttribute<Company, User> users;
	public static volatile SingularAttribute<Company, String> phoneNumber;
	public static volatile SingularAttribute<Company, String> address;
	public static volatile SingularAttribute<Company, String> name;
	public static volatile SingularAttribute<Company, Boolean> active;
	public static volatile ListAttribute<Company, User> contacts;

}

