package com.cloudsolutions.framework.templatemodule.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/**
 * @author xavier
 * 
 */
@Target(ElementType.TYPE)
public @interface Block {
	String name();

	String module() default "";
}
