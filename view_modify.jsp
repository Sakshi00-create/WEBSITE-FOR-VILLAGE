<%@page import="java.sql.*,java.util.*" %>

<%


    try
    {
        
        if(request.getParameter("modify")!=null)
        {
           
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            Statement st = con.createStatement();
            String query = "SELECT * from seller_mod fetch first row only";
            
      ResultSet rs = st.executeQuery(query);
      out.println("*");
       int sid=0,productid=0;
       String des="";
        while(rs.next())
        {
         int qid=rs.getInt(1);
          //int q_id=Integer.parseInt(qid);
  des=rs.getString(2);
      sid=rs.getInt(3);
        // int seller_id=Integer.parseInt(sellerid);
          productid=rs.getInt(4);
         //int product_id=Integer.parseInt(productid);
        
         out.println("query id = " +qid);
         out.println("1");
        }
        String query1="SELECT sellerid FROM sellers WHERE sellerid="+sid+" ";
     
         out.println("--");
      ResultSet rs1 = st.executeQuery(query1);
     out.println("12");
    if(rs1.next()!=false) 
    { 
         out.println("3");
       String query2="SELECT * FROM PRODUCT  WHERE productid="+productid+" ";
      ResultSet rs2 = st.executeQuery(query2);
       out.println("4");
      if(rs2.next()!=false)
      {
           out.println("5");
          String q3="UPDATE PRODUCT SET productdetails='"+ des +"' WHERE sellersid ="+sid+" AND productid="+productid+" ";
    int x = st.executeUpdate(q3);
    if(x>0)
    {
       out.println("6");
    }
     
      }
      String q4="delete from seller_mod where sellerid="+sid+" ";
        int y = st.executeUpdate(q4);
         if(y>0)
         {
        out.println("updated");
        
         }
        
}
    else
    out.println("query is not valid");
     
     
    }
         
        if(request.getParameter("product")!=null)
        {
            
            String redirectURL = "view_product.jsp";
             
        response.sendRedirect(redirectURL);
        } 
         if(request.getParameter("query")!=null)
        {
             out.println("9");
            String re = "view_seller_mod.jsp";
             out.println("10");
        response.sendRedirect(re);
        } 
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
