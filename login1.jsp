
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            String email=request.getParameter("mail");
            String passs=request.getParameter("pass");
             Class.forName("org.apache.derby.jdbc.ClientDriver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sign","sakshi","sakshi");
         
            
            String query = "select PASS from sign where email LIKE '"+email+"'";
            PreparedStatement statmnt = con.prepareStatement(query);
            
            ResultSet result = statmnt.executeQuery();  
            
            if(result.next())
            {   
               
                String passw = result.getString("PASS");               
            // if(passw==passs)
             //{
                 String redirectURL = "home.jsp";
             
        response.sendRedirect(redirectURL);
           // }
            
               
            }
            else{
                out.println("wrong credentials entered");
            }
        }
         if(request.getParameter("forgot")!=null){
              String redirectURL1 = "mail.jsp";
             
        response.sendRedirect(redirectURL1);
         }
         if(request.getParameter("admin")!=null){
              String redirectURL2 = "admin1.jsp";
             
        response.sendRedirect(redirectURL2);
         }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
