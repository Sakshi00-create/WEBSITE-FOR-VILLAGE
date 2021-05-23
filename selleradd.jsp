<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            String no=request.getParameter("no");
            String name=request.getParameter("name");
            
            String cat=request.getParameter("category");
            
            String price=request.getParameter("price");
           int price1=Integer.parseInt(price);
           // int comp_no=Integer.parseInt(no);
            String desc=request.getParameter("desc");
          //  out.println("no= " + no +
   //"name= " + name +"cat="+cat+"price="+price+"description="+desc);
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sellerinfo","seller","seller");
            Statement st = con.createStatement();
            out.println("-");
            String query = "SELECT CATID from category where category='"+cat+"'";
            
      ResultSet rs = st.executeQuery(query);
     // out.println("*");
        int catid=0;
        while(rs.next())
        {
       
          catid=rs.getInt(1);
        
        // out.println("1");
        }
    
//out.println("4");
  int y=st.executeUpdate("insert into sellers(aadharno) values ('"+no+"')");
     //out.println(" ** ");
          String query1 = "SELECT sellerid from sellers where aadharno='"+no+"'";
      ResultSet rs1 = st.executeQuery(query1);
      int seller=0;
     if(rs1.next()!=false)
     { //out.println("34");
         seller=rs1.getInt(1);
          st.execute("insert into product(productname,productprice,productdetails,sellersid,categoryid) values('"+name+"',"+price1+",'"+desc+"',"+seller+","+catid+")");
            out.println("executed");
     }
    
    
      
          
        }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>