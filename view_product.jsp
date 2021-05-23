
<%@page import="java.sql.*,java.util.*" %>
<% Class.forName("org.apache.derby.jdbc.ClientDriver"); %>
<HTML>
       <HEAD>
       <TITLE>The View Of Database Table </TITLE>
       </HEAD>
       <BODY BGCOLOR="cyan">
       <H1>The View Of Database Table </H1>
       <%
           Connection connection = DriverManager.getConnection(
            "jdbc:derby://localhost:1527/sellerinfo","seller","seller");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from product ") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>PRODUCT ID</TH>
      <TH>PRODUCT NAME</TH>
      <TH>PRODUCT PRICE</TH>
      <TH>SELLER ID</TH>
      <TH>CATEGORY ID</TH>
      
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       
      </TR>
      <% } %>
     </TABLE>
     </BODY>
</HTML>