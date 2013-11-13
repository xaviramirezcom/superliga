package ec.com.cloudsolutions.superliga.restapi.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import ec.com.cloudsolutions.superliga.securitymodule.entities.Permission;
import ec.com.cloudsolutions.superliga.securitymodule.enums.MenuTypeEnum;
import ec.com.cloudsolutions.superliga.securitymodule.enums.PermissionNameEnum;
import ec.com.cloudsolutions.superliga.securitymodule.enums.PermissionTypeEnum;

/**
 * The persistent class for the permission database table.
 * 
 */
public class PermissionDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;


	private PermissionNameEnum permissionNameEnum;

	private PermissionTypeEnum permissionTypeEnum;

	private MenuTypeEnum menuTypeEnum;
	
	public PermissionDTO(Permission permission){
		if(permission!=null){
			this.permissionNameEnum = permission.getPermissionNameEnum();
			this.permissionTypeEnum = permission.getPermissionTypeEnum();
			this.menuTypeEnum= permission.getMenuTypeEnum();
		}
	}
	
	public static List<PermissionDTO> convertList(List<Permission> permissions){
		List<PermissionDTO> permissionDTOs = new ArrayList<PermissionDTO>();
		if(permissions!=null && ! permissions.isEmpty()){
			for(Permission permission: permissions){
				permissionDTOs.add(new PermissionDTO(permission));
			}
		}
		return permissionDTOs;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public PermissionNameEnum getPermissionNameEnum() {
		return permissionNameEnum;
	}

	public void setPermissionNameEnum(PermissionNameEnum permissionNameEnum) {
		this.permissionNameEnum = permissionNameEnum;
	}

	public PermissionTypeEnum getPermissionTypeEnum() {
		return permissionTypeEnum;
	}

	public void setPermissionTypeEnum(PermissionTypeEnum permissionTypeEnum) {
		this.permissionTypeEnum = permissionTypeEnum;
	}

	public MenuTypeEnum getMenuTypeEnum() {
		return menuTypeEnum;
	}

	public void setMenuTypeEnum(MenuTypeEnum menuTypeEnum) {
		this.menuTypeEnum = menuTypeEnum;
	}


}