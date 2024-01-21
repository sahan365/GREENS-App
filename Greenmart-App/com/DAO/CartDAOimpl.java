package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDAOimpl implements cartDAO {
	
	private Connection conn;
	
	public CartDAOImpl(connection conn)
	{
		this.conn=conn;
	}
	
	
	
	
	
	public boolean addcart(cart c) {
		boolean f=false;
		try {
			
		string sql="insert into cart(pid,uid,productName,price,total_price) values(?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, c.getpid());
		ps.setString(2, c.getUserId());
		ps.setString(3, c.getProductName());
		ps.setDouble(4, c.getPrice());
		ps.setDouble(5, c.getTotalPrice());
		
		
		int i=ps.executeUpdate()
		if(i==1)
		{
			f=true;
		}
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
