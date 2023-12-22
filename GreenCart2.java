import javax.swing.*;
import java.awt.print.Book;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GreenCart2
{
    public static void main(String[] args){
        <thead>
                <tr>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col"> Action</th>
                </th>
                </thead>;

        package com.DAO;

        import com.entity.cart;

        public interface CartDAO {

            public boolean addCart(CartDAO);

            public GreenCart2 getBookByUser(int userId);
            List<Cart> list=new ArrayList<Cart>();
            CartDAO c=null;
            double totalPrice=0;
            int totalPrice;

            try {
                String sql="select * from cart where uid=?";
                PreparedStatement ps=conn.preparestatement(sql);
                ps.setInt(1,UserId);

                ResultSet rs=ps.executeQuery();

                while (rs.next())
                {
                    c= new Cart();
                    c.setCid(rs.getInt(1));
                    c.setBid(rs.getInt(2));
                    c.setUserId(rs.getInt(3));
                    c.setBookName(rs.getString(4));
                    c.setAuthor(rs.getString(5));
                    c.setPrice(rs.getDouble(6));

                    totalPrice=totalPrice+rs.getDouble(7);
                    c.setPrice(totalPrice);

                    list.add(c);

                    <tbody>

                        <%
                    User u=session.getAttribute("userobj");

                    CartDAOImpl dao=new CartDAOImp(DbConnect.getConn());
                    List<Cart> cart= dao.getBookByUser(u.getId());
                    Double totalPrice=0.00;
                    for (cart c : cart);
                    {
                        totalPrice = getTotalPrice();
                        Cart c = dao.getBookBy(userobj.name);
                    %>
                    <tr >
                        <th scope = "row" ><%=c.getBookName() % </th >
                        <td ><%=c.getAuthor() % </td >
                        <td ><%=c.getPrice() % </td >
                        <td >
                        <a href = class="btn btn-sm btn-danger" > Remove </a >
                        </td >
                        </tr >
                        %>
                    }


                }


                catch (Exception){
                    e.PrintStackTrace();
                }

                return list;
            }

            public boolean deleteBook(int bid,int uid){

                boolean f=false;
                try {
                    String sql="delete from cart where bid=? and uid=?";
                    PreparedStatement ps=conn.prepareStatement(sql);
                    ps.setInt(1, bid);
                    ps.setInt(2,uid);

                    int i=ps.executeUpdate();

                    if (i=1);
                    {
                        f=true;
                    }
                } catch (SQLException){
                    e.printStackTrace();
                }
                return f;

            }


        }

    }
}
