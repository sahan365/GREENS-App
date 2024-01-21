package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.seevelet.annotation.Webservlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class CartServlet extends HttpServlet {
	
	
	
	
	
	
	try {
		int pid=Integer.parseInt(req.getParameter("pid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
		
		
		ProductDAOImpl dao=newProductDAOImpl(DBConnect.getConn());
		ProductDtls p=dao.getProductById(pid);
		
		
		
		
		
		
		Cart c=new Cart();
		c.setPid(pid);System.out
		c.setUserId(uid);
		c.setProdutName(p.getProductName());
		c.setPrice(Double.parseDouble(b.getPrice());
		c.setTotalPrice(Double.parseDouble(b.getPrice()));
		
		
		CartDAOImpl dao2=new CartDAOImpl(DBConnect.getConn());
		boolean f=dao2.addCart(c);
		
		if(f)
		{
			session.setAttribute("addcart","Produt Added to Cart");
			resp.sendRedirect("all new products.jsp");
			
			System.out.println("Add Cart Success");
		}else {
			
			session.setAttribute("faild","Something wrong on server");
			resp.sendRedirect("all new products.jsp");
			
			System.out.println("not added to cart");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
