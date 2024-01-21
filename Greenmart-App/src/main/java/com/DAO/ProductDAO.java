package com.DAO;

import java.util.List;
import com.entity.ProductDtls;

public interface ProductDAO {

	
	public boolean addProduct(ProductDtls b);
	
	public List<ProductDtls> getAllProduct();
	
	public ProductDtls getProductById(int id);
	
	public boolean updateEditProduct(ProductDtls b);
	
	public boolean deleteProduct(int id);
	
	public List<ProductDtls> getVegitables();
	
	public List<ProductDtls> getFruits();
	
	public List<ProductDtls> getAllVegitables();
	
	public List<ProductDtls> getAllFruits();
	
}
