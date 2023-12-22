package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.ProductDtls;

@WebServlet("/add_product")
@MultipartConfig
public class ProductAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String productName=req.getParameter("bname");
			String price=(req.getParameter("price"));
			String categories=req.getParameter("btype");
			String status=req.getParameter("bstatus");
			Part part=req.getPart("bimg");
			String fileName=part.getSubmittedFileName();
			
			ProductDtls b=new ProductDtls(productName,price,categories,status,fileName,"admin");
			
			
			ProductDAOImpl dao=new ProductDAOImpl(DBConnect.getConn());
			
			
			boolean f=dao.addProduct(b);
			 
			HttpSession session=req.getSession();
			if(f) {
				
				String path=getServletContext().getRealPath("")+"product";
			
				File file=new File(path);
				part.write(path+File.separator+fileName);
				
				session.setAttribute("succMsg","Product Add Successfuly");
				resp.sendRedirect("admin/add_product.jsp");
			}else {
				session.setAttribute("failedMsg","Something Wrong On Server");
				resp.sendRedirect("admin/add_product.jsp");
			}
			
			
		} catch(Exception e){
			e.printStackTrace();
			
			
		}
		
		
		
	}

	
}
