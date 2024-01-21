package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.ProductDtls;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String productName=req.getParameter("bname");
			String price=(req.getParameter("price"));
			String status=req.getParameter("status");
			
			ProductDtls b=new ProductDtls();
			b.setProductId(id);
			b.setProductName(productName);
			b.setPrice(price);
			b.setStatus(status);
			
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditProduct(b);
			
			HttpSession session= req.getSession();
			
			
			if(f)
			{
				session.setAttribute("SuccMsg", "Product Update Successfully..!");
				resp.sendRedirect("admin/all_product.jsp");
			}else {
				session.setAttribute("failedMsg", "Something Wrong on server..!");
				resp.sendRedirect("admin/all_product.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
