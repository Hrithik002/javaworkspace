package com.mphasis.productmanagerapp.service;

import java.util.List;

import com.mphasis.productmanager.dao.ProductDao;
import com.mphasis.productmanagerapp.model.ProductModel;


public class ProductService {
	private ProductDao productDAO =new ProductDao();
	
		public List<ProductModel>getAllProducts() {
			
		return productDAO.findall();
		
	}
		public int saveProduct(ProductModel product) {
			return productDAO.save(product);
		}

}
