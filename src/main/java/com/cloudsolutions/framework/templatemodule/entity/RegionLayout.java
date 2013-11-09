package com.cloudsolutions.framework.templatemodule.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * Entity Class
 * 
 */
@Entity
public class RegionLayout implements Serializable {

	private static final long serialVersionUID = 1L;

	public RegionLayout() {
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
	private TemplateLayout templateLayout;

	@OneToMany
	private List<BlockLayout> blockLayouts;

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

	public TemplateLayout getTemplateLayout() {
		return templateLayout;
	}

	public void setTemplateLayout(TemplateLayout templateLayout) {
		this.templateLayout = templateLayout;
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

}
