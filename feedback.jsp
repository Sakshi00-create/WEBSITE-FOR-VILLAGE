<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try
    {
        if(request.getParameter("submit")!=null)
        {
            String id=request.getParameter("id");
            int compid=Integer.parseInt(id);
            String dat=request.getParameter("date");
           String msg=request.getParameter("message");
           
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            String query="select comp_type_id from comp where compid="+compid+"";
                  Statement st = con.createStatement();
            out.println("-");
            
            
      ResultSet rs = st.executeQuery(query);
               if(rs.next()==true)
               {
                   out.println("**");
                    st.execute("insert into feed(feeddate,descrip,compid) values('"+dat+"','"+msg+"',"+compid+")");
            out.println("executed");
               }
            
                out.println("<script> alert('inserted successfully,go to your home page for more updates')</script>");
        
        }
    }
        catch(Exception ex){ ex.printStackTrace();}
    
%>
