package com.comtrade.service;

import java.io.File;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.comtrade.entity.Category;
import com.comtrade.repository.CategoryRepository;
@Service
public class CategoryServiceImp implements CategoryService {
	private CategoryRepository repository;
	
	
	@Autowired
	public CategoryServiceImp(CategoryRepository repository) {
		super();
		this.repository = repository;
	}



	@Override
	@Transactional(readOnly = true)
	public List<Category> categories() {
		
		return repository.findAll();
	}



	@Override
	@Transactional(readOnly = true)
	public Category findCategoryById(int categoryId) {
		Optional<Category> category = repository.findById(categoryId);
		
		return category.get();
	}



	@Override
	@Transactional
	public void save(Category category) {
		repository.save(category);
		
	}



	@Override
	@Transactional
	public void remove(int categoryId, String category) {
		repository.deleteById(categoryId);
		File dir = new File("C:\\Users\\da9v3\\eeclipse-workspace\\ECommerce\\ECommerce\\src\\main\\resources\\static\\images\\"+category);
		File [] files = dir.listFiles();
		for(File f:files) {
			f.delete();
		}
		dir.delete();
	}

}
