
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
              String redirectURL = "view_modify1.jsp";
             
        response.sendRedirect(redirectURL);
             
    }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
