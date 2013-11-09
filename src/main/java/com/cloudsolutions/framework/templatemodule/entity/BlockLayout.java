package com.cloudsolutions.framework.templatemodule.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * Entity Class
 * 
 */
@Entity
public class BlockLayout implements Serializable {

	private static final long serialVersionUID = 1L;

	public BlockLayout() {
		super();
	}

	@Id
	private Long id;

	private String name;

	private String description;

	private Integer columns;

	private String classes;

	private String prepend;

	private String append;

	@ManyToOne
	private RegionLayout regionLayout;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getColumns() {
		return columns;
	}

	public void setColumns(Integer columns) {
		this.columns = columns;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getPrepend() {
		return prepend;
	}

	public void setPrepend(String prepend) {
		this.prepend = prepend;
	}

	public String getAppend() {
		return append;
	}

	public void setAppend(String append) {
		this.append = append;
	}

	public RegionLayout getRegionLayout() {
		return regionLayout;
	}

	public void setRegionLayout(RegionLayout regionLayout) {
		this.regionLayout = regionLayout;
	}

}
