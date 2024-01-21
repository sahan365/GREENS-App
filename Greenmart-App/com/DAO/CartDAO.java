package com.DAO;

import com.entity.ProductDtls;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Cart;

public interface CartDAO {

	public boolean addCart(cart c);
	
piblic ProductDtls getProductByUser(int userId) {
	ProductDtls p=null;
	double totalPrice;
	try {
		
		string sql="select * from cartwhere uid=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, userId);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			c= new Cart();
			c.(rs.getInt(1));
			c.setPid(rs.getInt(2));
			c.setUserId(rs.getInt(3));
			c.setProductName(rs.getString(4));
			c.setPrice(rs.getDouble(5));
			
			totalPrice=totalPrice+rs.getDouble(6);
			c.setPrice(totalPrice);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return c;
}


}
