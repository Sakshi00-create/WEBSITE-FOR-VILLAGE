
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message.RecipientType"%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try
    {
        
        if(request.getParameter("submit")!=null)
        {
            Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 467);
        props.put("mail.smtp.user", "sakshisharma0526@gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.debug", "true");
        out.println("1");
        props.put("mail.smtp.socketFactory.port", 467);
        out.println("2");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false"); 
        try {
         Class.forName("org.apache.derby.jdbc.ClientDriver"); 
             String email=request.getParameter("mail");
             out.println("3");
            java.sql.Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sign","sakshi","sakshi");
            
            String query = "select PASS from sign where EMAIL LIKE '"+email+"'";
            PreparedStatement statmnt = con.prepareStatement(query);
            ResultSet result = statmnt.executeQuery();               
            if (result.next())
            {   
                String fetchedPassword = result.getString("PASS");               
                Session session1 = Session.getDefaultInstance(props,null);
                session1.setDebug(true);
                MimeMessage message = new MimeMessage(session1);
                message.setText("Your password is " + fetchedPassword);
                message.setSubject("Password for your account");
                message.setFrom(new InternetAddress("sakshisharma0526@gmail.com"));
                out.println("4");
                message.addRecipient(RecipientType.TO, new InternetAddress(email));
                message.saveChanges();
                Transport transport = session1.getTransport("smtp");
                out.println("5");
                transport.connect("smtp.gmail.com", "sakshisharma0526@gmail.com", "Sakshi26@");
                transport.sendMessage(message, message.getAllRecipients());
                out.println("6");
                transport.close();
                     
                out.println("password mailed");
            }
        } catch (Exception e) {
            e.printStackTrace();  
           out.println("An error occured " +e.getMessage());
        }
           

              out.println("7");
           
            //String redirectURL = "home.jsp";
             
        //response.sendRedirect(redirectURL);
        }
    }
    catch(Exception ex){ ex.printStackTrace();
    out.println("An error occured " +ex.getMessage());}
%>
