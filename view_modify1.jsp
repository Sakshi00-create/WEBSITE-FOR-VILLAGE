<!DOCTYPE html>
      <html>
         <head>
           <title>ADMIN PAGE</title>

           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
           <!-- CSS only -->
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
           <!-- JavaScript Bundle with Popper -->
           <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
           <style>
           
           *{
           padding: 0;
           margin: 0;
           box-sizing:border-box;
           }

           body
           {
               font-family:'Quicksand','sans-serif';
           }

           <!--Navigation bar-->
           .navbar-brand img
           {
             height: 45px;
             padding-left: 30px;

           }
           #nav-bar ul
           {
             padding-left: 20px;
             padding-right: 20px;
           }

           .nav-item li
           {
               padding: 0 15px;
               float:right;

           }

           .nav-item .fa
           {
               margin-right: 6px;
           }

           .nav-item a
           {
             margin-left: 13px;
             float: right;
             text-align: left;
           }

           .nav-item a:hover
           {
             color: blue!important;
           }


           .navbar
           {
             background: #fff;
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

            input[type="submit"]
           {
             text-align: center;
             padding: 10px;
             margin:50px;
             color: #000;
             background-color: skyblue;
             border-radius: 5px;
             font-size: 20px;
             border: none;
           }

           </style>
        </head>

        <body>
            <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href="home.jsp"><img src="images/dv_logo.png " height="100px" width="100px"></a>
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
            <form method="post" action="view_modify.jsp">
<div class="view">
            <!--<button name="modify" value="OK" type="button" >Modify </button>
            <button name="button2" value="OK" type="button" onclick="view_product.jsp">SEE MODIFICATION TABLE</button>
            <button name="button3" value="OK" type="button" onclick="view_seller_mod.jsp">SEE PRODUCT TABLE</button>
	-->
            <input type="submit" name="modify" class="form-submit" value="MODIFY">
            <input type="submit" name="product" class="form-submit" value="VIEW PRODUCTS DATABASE">
            <input type="submit" name="query" class="form-submit" value="VIEW QUERY DATABASE">
</div>
            </form>
     </body>
</html>
