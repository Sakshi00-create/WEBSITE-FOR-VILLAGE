<!DOCTYPE html>
<html>
  <head>
    <title>HOME</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <style>
    *
    {
        padding: 0;
        margin:0;
        box-sizing: border-box;
    }

    body
    {
      background: #fff;
      background-size: cover;
      background-position: center;
      font-family:sans-serif;
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

    /----Slider----/
    #slider
    {
      width: 100%;
    }
    .carousel-item{
        height:700px;
    }
    /---- Corousel caption----/

    .carousel-caption
    {
      top:50%;
      transform: translateY(-50%);
      bottom: initial!important;
    }

    .carousel-caption h5
    {
      color: #fff;
      font-size: 30px;
    }

    /---about us---/

    #about
    {
      margin-top: 40px;
      padding-top: 50px;
      padding-bottom: 50px;
 
    }
    .btn
    {
      font-size:20px;
      margin-bottom: 20px;
    }

   .btn a
   {
    color:black;
    text-decoration:none;
    }

    .about-content
    {
      padding-top: 10px;
    }

    /---Products---/
    #products
    {
      width: 100%;
      padding: 100px 0;
      background: #efefef;

      text-align:center;
    }

    .product-box
    {
        width: 80%;
        display:flex;
        flex-wrap: wrap;
        justify-content:space-around;
        margin: auto;

    }

    .single-product
    {
      flex-basis: 48%;
      text-align: center;
      border-radius: 7px;
      margin-bottom: 20px;
      color: #fff;
      position: relative;
    }

    .single-product img
    {
      margin-top: 20px;
      border-radius: 8px;
    }

    .overlay
    {
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      border-radius: 7px;
      cursor: pointer;
      background: linear-gradient(rgba(0,0,0,0.5),#d5d5d5);
      opacity: 0;
      transition: 1s;
    }

    .single-product:hover .overlay
    {
      opacity: 1;
    }

    .product_desc
    {
      width: 80%;
      position: absolute;
      bottom: 0;
      left: 50%;
      opacity: 0;
      transform: translateX(-50%);
      transition: 1s;
    }
    .product_desc a
    {
      text-decoration: none;
      color: #000;
    }

    hr
    {
      background: #fff;
      height: 2px;
      border: 0;
      margin: 15px auto;
      width: 60%;
    }

    .single-product:hover .product_desc
    {
      bottom: 40%;
      opacity: 1;
    }


    /------Team Member----/
     #team
    {
      width: 100%;
      padding: 40px 0;
      background: #efefef;
    }

    .team-box
    {
        display:flex;
        flex-wrap: wrap;
        justify-content:space-around;
        margin: auto;
    }

    .img-box
    {
      flex-basis: 23%;
      text-align: center;
      margin-bottom: 50px;
      color: #fff;
      position: relative;
    }

    .img-box img
    {
      margin-top: 20px;
     border-radius: 20%;
    }
 
    .img-box h2
   {
        margin-left: 50px;
      font-size: 22px;
      font-weight: bold;
      margin-top: 15px;
      color:#007bff!important;
   }

   .img-box h3
    {
      margin-left: 40px;
     font-size:20px;
      color:black;
      margin-top: 15px;
    }


    /----Get In Touch----/

    #contact
    {
      background: #efefef;
      padding-top: 40px;
      padding-bottom: 40px;
      color: #777;
    }

    .form-group
    {
      padding-top: 15px;
      border-radius: 0 !important;
      border: none!important;
    }

    ::placeholder
    {
      color: #999!important;
    }

    .follow
    {
      background: #fff;
      padding: 10px;
      margin: 15px;
    }

    .btn
    {
        margin-top: 10px;
    }

    .contact-info .fa
    {
      margin: 10px;
      color: #007bff;
      font-weight: bold;
    }


    /--Footer --/

    .footer
    {
    background:#fff;
    box-sizing:border-box;
    padding: 0;
    text-decoration: none;
    font-size: 14px;
    padding: 40px 0 20px;
    }

    .footer .row
    {
    display: flex;
    }

    .footer h3
    {
    color: black;
    margin-bottom: 20px;
    }
    .footer-col-1, .footer-col-2, .footer-col-3
    {
    margin-top: 25px;
    max-width: 450px;
    margin-bottom: 20px;
    }

    .footer-col-2 li, .footer-col-3 li
    {
    font-size: 16px;
    list-style-type: none;
    padding-top: 3px;
    }

    .footer-col-2 a, .footer-col-3 a
    {
    color: #000;
    text-decoration: none;
    }

    .footer-col-1, .footer-col-2 , .footer-col-3
    {
    text-align: center;
    }

    .footer-col-1 img
    {
    margin-bottom: 20px;
    }

    .social .fa
    {
    margin-left: 10px;
    margin-bottom: 20px;
    color: black;
    font-weight: bold;
    }

    .social .fa:hover
    {
    color: blue
    }



    </style>

  </head>

  <body>
    <!-- Navigation Bar -->

  <section id="nav-bar">
      <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="home.jsp"><img src="images/dv_logo.png"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                        <a class="nav-link" href="home.jsp"><i class="fa fa-home"></i>HOME</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp"><i class="fa fa-user"></i>ABOUT US</a>
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
                        <a class="nav-link" href="comp1.jsp">COMPLAINTS</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.jsp"><i class="fa fa-phone"></i>CONTACT</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="news.jsp"></i>NEWS</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="view_modify1.jsp">ADMIN'S PAGE</a>
                      </li>
                  </ul>
              </div>
          </div>
      </nav>
  </section>


<!---slider---->
    <div class="slider">
      <div id="headerSlider" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#headerSlider" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#headerSlider" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#headerSlider" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/back.jpg" class="d-block img-fluid">
            <div class="carousel-caption d-none d-md-block">
                <h5>Beauty of Country lies in its civilisation</h5>
                <p>Our village is going forward to turn up into civilised society.</p>
              </div>
          </div>
          <div class="carousel-item">
            <img src="images/back2.jpg" class="d-block img-fluid">
            <div class="carousel-caption d-none d-md-block">
                <h5>Make every effort perfect to achieve everything perfect.</h5>
                <p>Some representative are working hard to present every information through this site.</p>
              </div>
          </div>
          <div class="carousel-item">
            <img src="images/back3.jpg" class="d-block img-fluid">
            <div class="carousel-caption d-none d-md-block">
                <h5>Let's come together to make new india</h5>
                <p>Each one,Teach one </p>
              </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#headerSlider"  data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#headerSlider"  data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!---About--->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
              <h2 style="margin-top:50px;">About Us</h2>
              <div class="about-content">
                <p>Our mission is to spread awareness, establise online systems and promoting local products in global market through our website.
	    Website aims to provide facilities to villagers to file basic complaints.
              </div>
              <button type="button" class = "btn btn-primary" > <a href="aboutus.jsp">Read more </a></button>
              </div>
        </div>
      </div>

    </section>

    <!--Product & trade--->

    <section id="products">
        <div class="title-text">
          <h1 style="text-align:center; margin-top:70px; margin-bottom: 30px;">PRODUCTS</h1>
        </div>

        <div class="product-box">
            <!--- Product - 1---->
            <div class="single-product">
              <img src="images/b_3_4.jpg" height="500px" width="500px">
                <div class="overlay"></div>
                <div class="product_desc">
                    <h3><a href="b_1.jsp">Handmade Planters</h3></a>
                    <hr>
                </div>
            </div>
            <!--- Product - 2---->
            <div class="single-product">
            <img src="images/pot.jpg" height="500px" width="500px">
              <div class="overlay"></div>
              <div class="product_desc">
              <h3><a href="b_2.jsp">Home Flower pots</h3></a>
                  <hr>
              </div>
            </div>
            <!--- Product - 3---->
            <div class="single-product">
            <img src="images/fans.jpg" height="500px" width="500px">
              <div class="overlay"></div>
              <div class="product_desc">
                <a href="#"><h3>Handmade Bamboo Fans</h3></a>
                  <hr>
              </div>
            </div>
            <!--- Product - 4---->
            <div class="single-product">
            <img src="images/basket.jpg" height="500px" width="500px">
              <div class="overlay"></div>
              <div class="product_desc">
                  <h3>  <a href="#">Handcrafted Baskets</h3></a>
                  <hr>
              </div>
            </div>

        </div>
    </section>


    <!---Team members--->
    <section id="team">
      <div class="container">
        <h1>Our Team</h1>
        <div class="team-box">
          <!---Image of member 1--->
          
            <div class="img-box">
	 <img src="images/WhatsApp Image 2021-05-21 at 12.48.09 AM.jpeg " height="350px" width="300px">
              <h2>Tanya Chetri</h2>
              <h3>Frontend Developer</h3>
              
          </div>
	
            <div class="img-box">
	 <img src="images/sakhsi.jpg"height="350px" width="300px">
               <h2>Sakshi Sharma</h2>
              <h3>Backend Developer</h3>
              
          </div>


            <div class="img-box">
	 <img src="images/sha.jpg"height="350px" width="300px">

             <h2>Shalley Yadav</h2>
              <h3>Front end  Developer</h3>
              
          </div>

             <div class="img-box">
	 <img src="images/ruc.jpg"height="350px" width="300px">

            <h2>Ruchika Chirania</h2>
              <h3>Database Manager</h3>
              
          </div>


         

        </div>
      </div>
    </section>

          <!---Get in Touch----->
    <section id="contact">
        <div class="container">
        <h1 style="text-align:center; margin-top:70px; margin-bottom: 30px;">Get In Touch</h1>
        <div class="row">

                <div class="col-md-6">
                  <form class="contact-form">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Your Name">
                    </div>
                    <div class="form-group">
                      <input type="number" class="form-control" placeholder="Your Number">
                    </div>
                    <div class="form-group">
                      <input type="email" class="form-control" placeholder="Your Email">
                    </div>
                    <div class="form-group">
                      <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                  </form>
                </div>

                <div class="col-md-6 contact-info">
                  <div class="follow"><b>Address:</b><i class="fa fa-map-marker"></i> XYZ Road, Banglore, IN</div>
                  <div class="follow"><b>Phone:</b><i class="fa fa-phone"></i>+0141 1234567890</div>
                  <div class="follow"><b>Email:</b><i class="fa fa-envelope-o"></i>digitalvillage@gmail.com</div>
                  <div class="follow"><label><b>Get Social:</b></label>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                  </div>
                </div>

              </div>
            </div>

          </section>

          <!--footer--->
                             <div class="footer">
                               <div class="footer-container">
                                 <div class="row">
                                     <div class="footer-col-1">
                                     <a href="home.jsp"><img src="images/dv_logo.png" width:"100px" height="100px"></a>
                                         <div class="social">
                                           <a href="#"><i class="fa fa-facebook"></i></a>
                                           <a href="#"><i class="fa fa-youtube-play"></i></a>
                                           <a href="#"><i class="fa fa-twitter"></i></a>
                                           <a href="#"><i class="fa fa-google-plus"></i></a>
                                         </div>

                                         <p><span>&#169;</span>2021 DIGITAL VILLAGE</p>
                                     </div>

                                     <div class="footer-col-2">
                                       <h3>Digital Village</h3>
                                       <ul>
                                         <li><a href="about.jsp">About us</a></li>
                                         <li><a href="products.jsp">Products</a></li>
                                         <li><a href="gallery1.jsp">Gallery</a></li>
                                         <li><a href="contact.jsp">Contact</a></li>
                                       </ul>
                                     </div>

                                     <div class="footer-col-3">
                                       <h3>Information</h3>
                                       <ul>
                                         <li><a href="news.jsp">News</a></li>
                                         <li><a href="event.jsp">Events</a></li>
                                       </ul>
                                     </div>


                                 </div>
                               </div>

                             </div>

  </body>
</html>
