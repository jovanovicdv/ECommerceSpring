package com.comtrade.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.comtrade.entity.Product;
import com.comtrade.repository.ProductRepository;

@Service
public class ProductServiceImp implements ProductService {
	private ProductRepository productRepository;
	
	
	@Autowired
	public ProductServiceImp(ProductRepository productRepository) {
		super();
		this.productRepository = productRepository;
	}

	@Override
	@Transactional(readOnly = true)
	public List<Product> products(int categoryId) {
		return productRepository.findByCategoryId(categoryId);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Product> allProducts() {
		
		return (List<Product>) productRepository.findAll();
	}



	@Override
	@Transactional
	public void save(Product product, Part part) throws IOException {
		String fileName = getFile(part);
		int a = fileName.lastIndexOf("\\");
		fileName = fileName.substring(a+1);
		
		
		String uploadFile = directoryPath()+"\\src\\main\\resources\\static\\images\\"+product.getCategory().getName()+"\\";
		File f = new File(uploadFile);
		
			if (!f.exists()) {
				f.mkdir();
			} 
		
		String name = uploadFile+fileName;
		product.setImage(fileName);
		productRepository.save(product);
		part.write(name);
		
	}

	private String getFile(Part part) {
			for(String content :  part.getHeader("content-disposition").split(";")) {
				if(content.trim().startsWith("filename")) {
					return content.substring(content.indexOf("=")+2, content.length()-1);
				}
				
			}
		return null;
	}

	@Override
	@Transactional
	public void remove(int productId, String image, String category) {
		productRepository.deleteById(productId);
		File f = new File(directoryPath()+"\\src\\main\\resources\\static\\images\\"+category+"\\"+image);
		f.delete();
		
	}
		
	private String directoryPath() {
		String path = System.getProperty("user.dir"); 
		return path;
	}
	

}
