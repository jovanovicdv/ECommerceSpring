package com.comtrade.service;

import java.util.List;

import com.comtrade.entity.Category;

public interface CategoryService {
	
	public List<Category>categories();

	public Category findCategoryById(int categoryId);

	public void save(Category category);

	public void remove(int categoryId, String category);

}
