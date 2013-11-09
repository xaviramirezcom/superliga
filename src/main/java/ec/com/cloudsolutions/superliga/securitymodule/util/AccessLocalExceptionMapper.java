package ec.com.cloudsolutions.superliga.securitymodule.util;

import javax.ejb.AccessLocalException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;

/**
 *
 * @author adam-bien.com
 */
@Provider
public class AccessLocalExceptionMapper implements ExceptionMapper<AccessLocalException> {
    @Context HttpServletRequest request;
    
    @Override
    public Response toResponse(AccessLocalException exception) {
        try {
            request.logout();
        } catch (ServletException ex) {
        }
       return Response.status(Response.Status.UNAUTHORIZED).build();
    }
}


