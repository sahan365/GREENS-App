package com.DAO;

import java.util.List;
import com.entity.ProductDtls;

public interface ProductDAO {

	
	public boolean addProduct(ProductDtls b);
	
	public List<ProductDtls> getAllBooks();
}
