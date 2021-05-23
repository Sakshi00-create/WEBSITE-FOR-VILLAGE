<%@page import="java.sql.*,java.util.*" %>
<% Class.forName("org.apache.derby.jdbc.ClientDriver"); %>
<HTML>
       <HEAD>
       <TITLE>The View Of Database Table </TITLE>
       </HEAD>
       <BODY BGCOLOR="Yellow">
       <H1>OLA! SEE MY VIEW</H1>
       <%
           Connection connection = DriverManager.getConnection(
            "jdbc:derby://localhost:1527/sellerinfo","seller","seller");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from seller_mod ") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>QUERY ID</TH>
      <TH>MODIFYING DETAILS</TH>
      <TH>SELLER ID</TH>
      <TH>PRODUCT ID</TH>
     
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       
      </TR>
      <% } %>
     </TABLE>
     </BODY>
</HTML>