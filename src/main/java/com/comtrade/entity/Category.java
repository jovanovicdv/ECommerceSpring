package com.comtrade.entity;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

@Entity
public class Category extends NamedEntity {
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "category")
	private Set<Product>products = new LinkedHashSet<Product>();

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	public void addProduct ( Product product) {
		products.add(product);
		product.setCategory(this);
	}
	
	public void removeProduct(Product product) {
		products.remove(product);
		product.setCategory(null);
	}
	

}
