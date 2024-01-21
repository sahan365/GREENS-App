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
public ProductDtls getProductById(int id) {
	
	ProductDtls b=null;
	try {
		
		String sql="select * from product_dtls where productId=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		while (rs.next())
		{
			b=new ProductDtls();
			b.setProductId(rs.getInt(1));
			b.setProductName(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setProductCategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return b;
	
}



@Override
public boolean updateEditProduct(ProductDtls b) {
	boolean f=false;
	try {
		
		String sql="update product_dtls set productname=?,price=?,status=? where productId=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, b.getProductName());
		ps.setString(2, b.getPrice());
		ps.setString(3, b.getStatus());
		ps.setInt(4, b.getProductId());
		
		int i = ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return f;
}



@Override
public boolean deleteProduct(int id) {
	boolean f=false;
	try {
		String sql="delete from product_dtls where productId=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return f;
}

@Override
public List<ProductDtls> getVegitables() {
	
	List<ProductDtls> list=new ArrayList<ProductDtls>();
	ProductDtls b=null;
	try {
		String sql="select * from product_dtls where productCategory=? and status=? order by productId DESC";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, "New");
		ps.setString(2, "Active");
		ResultSet rs=ps.executeQuery();
		int i=1;
		while(rs.next() && i<=4)
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
			i++;
		}
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;
}

@Override
public List<ProductDtls> getFruits() {
	List<ProductDtls> list=new ArrayList<ProductDtls>();
	ProductDtls b=null;
	try {
		String sql="select * from product_dtls where status=? order by productId DESC";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, "Active");
		ResultSet rs=ps.executeQuery();
		int i=1;
		while(rs.next() && i<=4)
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
			i++;
		}
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;
}

@Override
public List<ProductDtls> getAllVegitables() {
	List<ProductDtls> list=new ArrayList<ProductDtls>();
	ProductDtls b=null;
	try {
		String sql="select * from product_dtls where productCategory=? and status=? order by productId DESC";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, "New");
		ps.setString(2, "Active");
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
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;
}

@Override
public List<ProductDtls> getAllFruits() {
	List<ProductDtls> list=new ArrayList<ProductDtls>();
	ProductDtls b=null;
	try {
		String sql="select * from product_dtls where status=? order by productId DESC";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, "Active");
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
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;
}

}
