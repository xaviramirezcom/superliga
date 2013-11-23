package ec.com.cloudsolutions.superliga.restapi.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.rmi.RemoteException;

import javax.ejb.EJBHome;
import javax.ejb.EJBObject;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;

import ec.com.cloudsolutions.superliga.restapi.exceptions.ServiceLocatorException;


public class ServiceLocator {
  private static ServiceLocator me;
  InitialContext context = null;
    
  private ServiceLocator() 
  throws ServiceLocatorException {
    try {
      context = new InitialContext();
    } catch(NamingException ne) {
      throw new ServiceLocatorException();
    }
  }
    
  // Returns the instance of ServiceLocator class
  public static ServiceLocator getInstance() 
  throws ServiceLocatorException {
    if (me == null) {
      me = new ServiceLocator();
    }
    return me;
  }
    
  // Converts the serialized string into EJBHandle 
  // then to EJBObject.
  public EJBObject getService(String id) 
  throws ServiceLocatorException {
    if (id == null) {
      throw new ServiceLocatorException();
    }
    try {
      byte[] bytes = new String(id).getBytes();
      InputStream io = new 
        ByteArrayInputStream(bytes);
      ObjectInputStream os = new 
        ObjectInputStream(io);
      javax.ejb.Handle handle = 
        (javax.ejb.Handle)os.readObject();
      return handle.getEJBObject();
    } catch(Exception ex) {
      throw new ServiceLocatorException();
    }
  }
    
  // Returns the String that represents the given 
  // EJBObject's handle in serialized format.
  protected String getId(EJBObject session) 
  throws ServiceLocatorException {
    try {
      javax.ejb.Handle handle = session.getHandle();
      ByteArrayOutputStream fo = new 
        ByteArrayOutputStream();
      ObjectOutputStream so = new 
        ObjectOutputStream(fo);
      so.writeObject(handle);
      so.flush();
      so.close();
      return new String(fo.toByteArray());
    } catch(RemoteException ex) {
      throw new ServiceLocatorException();
    } catch(IOException ex) {
      throw new ServiceLocatorException();
    }
  }
    
  // Returns the EJBHome object for requested service 
  // name. Throws ServiceLocatorException If Any Error 
  // occurs in lookup
  public EJBHome getHome(String name, Class clazz) 
  throws ServiceLocatorException {
    try {
      Object objref = context.lookup(name);
      EJBHome home = (EJBHome) 
        PortableRemoteObject.narrow(objref, clazz);
      return home;
    } catch(NamingException ex) {
      throw new ServiceLocatorException();
    }
  }
}