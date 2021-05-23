<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE html>
      <html>
         <head>
           <title>SELLER'S FORM</title>

           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
           <!-- CSS only -->
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
           <!-- JavaScript Bundle with Popper -->
           <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

           <style>
               body{
               margin: 0;
               padding: 0;
               text-align: center ;
               background:lavender;
               background-size: cover;
               background-position: center;
               font-family: sans-serif;
             }

             #nav-Bar
             {
               position: sticky;
               top: 0;
               z-index: 10;
             }

             .navbar-brand img
             {
               height: 40px;
               padding-left: 30px;

             }

             #nav-bar ul li
             {
                 padding: 0 10px;
                 float:right;
             }

             #nav-bar ul li .fa
             {
                 margin-right: 6px;
             }

             #nav-bar ul li a
             {
               float: right;
               text-align: left;
             }

             #nav-bar ul li a:hover
             {
               color: blue!important;
             }

             .navbar
             {
               background: white;
             }
             .navbar-toggler
             {
               border: none!important;
             }
             .nav-link
             {
               color:#555!important;
               font-weight:600;
               font-size:16px;
             }



             .f_title
             {
             margin-top:50px;
             color: black;
             text-transform:uppercase;
             transition: all 4s ease-in-out;

             }
             .f_title h1
             {
             font-size:32px;
             line-height:10px;
             }
             .f_title h2
             {
               padding-top: 10px;
             font-size: 16px;
             }
             feedback-form{
             margin-top: 50px;
             transition: all 4s ease-in-out;
             color: black;

             }
             .form-control
             {
             padding-top: 30px;
             width : 600px;
             background: transparent;
             border: none;
             outline: none;
             border-bottom: 1px solid black;
             color: #fff;
             font-size: 18px;
             margin-bottom: 10px;
             margin-left: 450px;
             }

             input
             {
               height: 45px;
               color: black;
             }

             textarea
             {
           		  width: 100%;
           		  height: 75px;
           		  resize: none;
           	}
             ::-webkit-input-placeholder
             {
             color: black;
             }
             .feedback-form input[type="submit"]
             {
             width: 400px;
             background: yellow;
             border-radius: 5px;
             border: 1px solid yellow;
             color: black;
             font-size: 25px;
             height: 50px;
             margin-top: 20px;
             margin-bottom: 50px;
             }
             .feedback-form input[type="submit"]
             {
             background-color: #f44336;
             cursor: pointer;
             }

          </style>
        </head>

        <body>

          <!-- Navigation Bar -->

        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#"><img src="dv_logo.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                              <a class="nav-link" href="home.jsp"><i class="fa fa-home"></i>HOME</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="about.jsp"><i class="fa fa-user"></i>ABOUT US</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="event.jsp"><i class="fa fa-calendar"></i>EVENT</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="gallery1.jsp"><i class="fa fa-picture-o"></i>GALLERY</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="products.jsp">PRODUCT & TRADE</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="contact.jsp"><i class="fa fa-phone"></i>CONTACT</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>

           <div class="f_title">
             <h1>ADD DETAILS</h1>
             <h2> We are always ready to serve you!</h2>
           </div>
<form method="post" action="selleradd.jsp">
    
           <div class="feedback-form">
             <form>
	<input type="text" name="no" class="form-control" placeholder="ADHAAR NO." required>
                 <br>
 <input type="text" name="name" class="form-control" placeholder="PRODUCT'S NAME  ex: wooden baskets,handloom" required>
                    <br>
  <input type="text" name="category" class="form-control" placeholder="CATEGORY" >
                 <br>
                 <input type="text" name="price" class="form-control" placeholder="PRODUCT'S PRICE" required>
                 <br>
                 <textarea name="desc" class="form-control" placeholder="   YOUR PRODUCT DESCRIPTION DETAILS" row="6" required></textarea>
                 <br>
                 <input type="submit" name="submit" class="form-submit" value="SUBMIT">
             </form>
         </div>
</form>
     </body>
</html>

