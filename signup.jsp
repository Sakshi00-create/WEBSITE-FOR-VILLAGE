
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            String adhar=request.getParameter("adh");

            int adha=Integer.parseInt(adhar);
            String email=request.getParameter("mail");
            String pass=request.getParameter("pass");
            String conf=request.getParameter("conf");
                String color=request.getParameter("color");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sign","sakshi","sakshi");
            
            //Statement st=con.createStatement();
           Statement st=con.createStatement();
           ResultSet rs;
            Boolean i=st.execute("insert into sign(email,pass,conf,adhar,ans) values('"+email+"','"+pass+"','"+conf+"',"+adhar+",'"+color+"')");
            out.println("inserted");
            String redirectURL = "login.jsp";
             
        response.sendRedirect(redirectURL);
        }
         if(request.getParameter("login")!=null)
         {
              String redirectURL1 = "login.jsp";
             
        response.sendRedirect(redirectURL1);
         }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
