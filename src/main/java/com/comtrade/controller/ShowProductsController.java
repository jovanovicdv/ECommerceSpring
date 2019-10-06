package com.comtrade.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.comtrade.entity.Product;
import com.comtrade.service.CategoryService;
import com.comtrade.service.ProductService;

@Controller
public class ShowProductsController {
private CategoryService categoryService;
private ProductService productService;
	
	@Autowired	
	public ShowProductsController(CategoryService categoryService, ProductService productService) {
		super();
		this.categoryService = categoryService;
		this.productService = productService;
	}


	@GetMapping("/showproducts/{categoryId}")
	public String showProducts(@PathVariable ("categoryId") int categoryId, Model model) {
		List<Product>list = productService.products(categoryId);
		model.addAttribute("products", list);
		model.addAttribute("category", categoryService.findCategoryById(categoryId));
		
		return "showproducts";
	}
	
	@GetMapping("/showproducts")
	public String showAllProducts(Model model) {
		List<Product>list = productService.allProducts();
		model.addAttribute("products", list);
		
		
		return "showproducts";
	}

	

	

}
