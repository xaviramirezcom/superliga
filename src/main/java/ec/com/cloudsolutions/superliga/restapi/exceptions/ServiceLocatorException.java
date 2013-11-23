/*
 * EntityNotRemovedException.java
 *
 * Created on Apr 15, 2008
 *
 * Copyright © ndeveloper. All Rights Reserved.
 *
 * NDEVELOPER cia ltda
 * Pradera N30-258 y Mariano Aguilera.
 * Edificio Santorini Piso 3
 * Quito-Ecuador
 * www.ndeveloper.com
 * www.ndeveloper.net
 */
package ec.com.cloudsolutions.superliga.restapi.exceptions;

/**
 * Exception for not removed entities
 * 
 * @author David Cisneros
 * @version $Revision: 1.1 $
 */
public class ServiceLocatorException extends Exception{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    public ServiceLocatorException() {
	super();
    }

    /**
     * @param message
     * @param cause
     */
    public ServiceLocatorException(String message, Throwable cause) {
	super(message, cause);
    }

    /**
     * @param message
     */
    public ServiceLocatorException(String message) {
	super(message);
    }

    /**
     * @param cause
     */
    public ServiceLocatorException(Throwable cause) {
	super(cause);
    }

}
