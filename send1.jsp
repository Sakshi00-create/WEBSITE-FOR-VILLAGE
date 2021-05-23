
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            String pcolor=request.getParameter("color");

             Class.forName("org.apache.derby.jdbc.ClientDriver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sign","sakshi","sakshi");
         
            
            String query = "select PASS from sign where ans LIKE '"+pcolor+"'";
            PreparedStatement statmnt = con.prepareStatement(query);
            
            ResultSet result = statmnt.executeQuery();               
            if(result.next()!=false)
            {   
               
                String passw = result.getString("PASS");               
               out.println("your password     " + passw);
               
            }
        }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
