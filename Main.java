// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        // Press Alt+Enter with your caret at the highlighted text to see how
        // IntelliJ IDEA suggests fixing it.
        {}
        <%
        User u=(User)session.getAttribute("userobj");
        %>
        <div class="row">
                <% if(u==null)%>
        {
            <%  <a href="Login.jsp" class="btn btn-danger btn-sm ml-2">Add cart </a>

            %>
        }
                <a href="" class="btn btn-danger btn-sm ml-2">Add cart </a>



    }
}
public class Main {
    public static void main(String[] args) {
    package com.entity;
    public clss cart {
    private int iid;
    private int bid;
    private int userID;
    private string Name;
    private Double price;
    private Double totalPrice;}
    }
    public boolean addCart(Cart c);
    private connection con;
    public CartDADImp1 (connection con);
    {
    try {
        int bid=Integer.parseInt(req.getParameter"bid");
        int uid=Integer.parseInt(req.getParameter"uid");
        catch(exception);
        Cart c=new Cart();
        c.setBid(bid);
        c.setUserid(uid);
        c.setBookname(b.getBookName);
        c.setPrice(Double.parseDouble(b.getPrice()));
        c.setTotalPrice(Double.parseDouble(b.getPrice()));

        cartDAOImp1 dao2=new CartDAOImp(DBConnect.getConn());
        boolean f=dao2.addCart(c);

        if (f)
        {
            session.setAttribute("addCart","Book added to cart");
            resp.sendRedirect("all new books.jsp");
            System.out.println("Add cart Success");
        }else {
            session.setAttribute("failed","Something wrong on server");
            resp.sendRedirect("all new books.jsp");
            System.out.println("not added to cart");
        }

    }
    }
}
