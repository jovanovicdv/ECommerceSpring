package com.comtrade.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.comtrade.entity.Category;
import com.comtrade.entity.Product;
import com.comtrade.service.CategoryService;
import com.comtrade.service.ProductService;

@Controller
@MultipartConfig
public class NewProductController {
	private ProductService productService;
	private CategoryService categoryService;
	
	
	@Autowired
	public NewProductController(ProductService productService, CategoryService categoryService) {
		super();
		this.productService = productService;
		this.categoryService = categoryService;
	}



	@GetMapping("/newproduct")
	public String newProductPage(Model model) {
		Product product= new Product();
		product.setCategory(new Category());
		model.addAttribute("newcategory", new Category());
		model.addAttribute("product", product);
		model.addAttribute("categories", categoryService.categories());
		return "newproduct";
	}
	
	@PostMapping("/newproduct/newproduct")
	public String saveProduct(@ModelAttribute Product product, HttpServletRequest request) throws IOException, ServletException{
		productService.save(product, request.getPart("file"));
		return "redirect:/showproducts/"+product.getCategory().getId();
	}
	@PostMapping("/newproduct/newcategory")
	public String saveCategory(@ModelAttribute Category category) {
		categoryService.save(category);
		return "redirect:/newproduct";
	}
	
	

}
