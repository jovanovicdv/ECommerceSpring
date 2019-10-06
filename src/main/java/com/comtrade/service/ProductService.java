package com.comtrade.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Part;

import com.comtrade.entity.Product;

public interface ProductService {
	
	public List<Product>products(int categoryId);
	public List<Product>allProducts();
	public void save(Product product, Part part) throws IOException;
	public void remove(int productId, String image, String category);
	

}