package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.ProductDtls;

public class ProductDAOImpl implements ProductDAO{

	private Connection conn;

	public ProductDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
  
	public boolean addProduct(ProductDtls b) {
		boolean f=false;
		try {
			String sql="insert into product_dtls(productname,price,productCategory,status,photo,email)values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getProductName());
			ps.setString(2, b.getPrice());
			ps.setString(3, b.getProductCategory());
			ps.setString(4, b.getStatus());
			ps.setString(5, b.getPhotoName());
			ps.setString(6, b.getEmail());
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

 public List<ProductDtls> getAllProduct() {
		
		List<ProductDtls>list=new ArrayList<ProductDtls>();
	    ProductDtls b=null;
		
		try {
			String sql="select * from product_dtls";	
			PreparedStatement ps=conn.prepareStatement(sql);
			
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b=new ProductDtls();
				b.setProductId(rs.getInt(1));
				b.setProductName(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setProductCategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
				list.add(b);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}


@Override
public List<ProductDtls> getAllBooks() {
	
	return null;
}
}






