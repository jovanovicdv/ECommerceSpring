package com.comtrade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.comtrade.entity.Category;
import com.comtrade.entity.Product;
import com.comtrade.service.CategoryService;
import com.comtrade.service.ProductService;

@Controller
public class RemoveProductController {
	private CategoryService categoryService;
	private ProductService productService;
	@Autowired
	public RemoveProductController(CategoryService categoryService, ProductService productService) {
		super();
		this.categoryService = categoryService;
		this.productService = productService;
	}
	
	@GetMapping("/removeproducts")
	public String showPage(Model model) {
		List<Category> list = categoryService.categories();
		model.addAttribute("categories", list);
		return "removeproducts";
	}
	
	@GetMapping("/removeproducts/{categoryId}")
	public String showProducts(@PathVariable ("categoryId") int categoryId, Model model) {
		List<Product>list = productService.products(categoryId);
		model.addAttribute("products", list);
		model.addAttribute("category", categoryService.findCategoryById(categoryId));
		
		return "forward:/removeproducts";
	}
	
	@GetMapping("/removeproducts/removeproduct/{productId}/{category}/{image}")
	public String removeProduct(@PathVariable ("productId") int productId,@PathVariable("category")String category, @PathVariable("image") String image) {
		productService.remove(productId,image,category);
		return "redirect:/removeproducts";
	}
	
	@GetMapping("/removeproducts/removecategory/{categoryId}/{category}")
	public String removeCategory(@PathVariable ("categoryId") int categoryId, @PathVariable("category")String category){
		categoryService.remove(categoryId, category);
		return "redirect:/removeproducts";
	}
	
	

}
