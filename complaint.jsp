<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try
    {
        if(request.getParameter("submit")!=null)
        {
            String no=request.getParameter("no");
            
            String category=request.getParameter("category");
            //Date date=new Date();
            //String dt=date.toString();
            String dat=request.getParameter("date");
            String dec=request.getParameter("desc");
            
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            String query="select comp_type_id from comp_type where category='"+category+"'";
                  Statement st = con.createStatement();
           
            
      ResultSet rs = st.executeQuery(query);
            if(rs.next()==true)
            {
                int comp_type_id=rs.getInt(1);
                String query1="select name from masters where aadhar='"+no+"'";
                         
            
      ResultSet rs1 = st.executeQuery(query1);
      if(rs1.next()==true)
      {String p="registered";
      out.println("^");
          st.execute("insert into comp(status,comp_type_id,aadhar,date,descrip) values('"+p+"',"+comp_type_id+",'"+no+"','"+dat+"','"+dec+"')");
            out.println("executed");
      }
            }
               
           
            out.println("<script> alert('inserted successfully ,you will recieve generated complaint id soon in 48 hours at registere email inbox')</script>");
        
        }
        if(request.getParameter("check")!=null)
        {
             String id=request.getParameter("comp_id");
             int comp=Integer.parseInt(id);
             
              Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            String quer="select status from comp where compid="+comp+"";
                  Statement st = con.createStatement();
            out.println("+");
            
            
      ResultSet r = st.executeQuery(quer);
             if(r.next()==true)
             {
                 String status=r.getString(1);
                 out.println("*");
                 out.println("status:"+status);
             }
        }
    }
        catch(Exception ex){ ex.printStackTrace();
        out.println("An error occured " +ex.getMessage());}
    
%>

