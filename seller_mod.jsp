<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            
            String sellerid=request.getParameter("sellerid");
   
            String productid=request.getParameter("productid");
      
          
            String subject=request.getParameter("subject");
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            
             Statement st=con.createStatement();
          
            st.executeUpdate("insert into seller_mod(des,sellerid,productid) values('"+subject+"','"+sellerid+"','"+productid+"')");
            
            out.println("inserted");
        }
    }
    catch(Exception ex){ ex.printStackTrace();
     out.println("An error occured " +ex.getMessage());}
%>
    