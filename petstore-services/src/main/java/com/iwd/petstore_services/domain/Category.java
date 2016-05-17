package com.iwd.petstore_services.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category implements Serializable {

	@Id
	@Column(name = "CATEGORY_ID")
	private Integer id;

	@Column(name = "CATEGORY_NAME")
	private String name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
