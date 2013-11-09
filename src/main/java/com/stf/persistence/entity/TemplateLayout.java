package com.stf.persistence.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * Entity Class
 * 
 */
@Entity
public class TemplateLayout implements Serializable {

	private static final long serialVersionUID = 1L;

	public TemplateLayout() {
		super();
	}

	@Id
	private Long id;

	private String name;

	private String description;

	@OneToMany
	private List<RegionLayout> regionLayouts;

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

}
