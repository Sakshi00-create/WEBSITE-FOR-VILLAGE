
<!DOCTYPE html>
 <html>
   <head>
     <title>Contact Us</title>
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



    #contact
    {
      background: #efefef;
      padding-top: 40px;
      padding-bottom: 40px;
      color: #777;
    }
    h1, p
    {
      color: black;
      text-align:center;
    }

    h1::after
    {
      content: '';
      background: #007bff;
      display: block;
      height: 2px;
      width: 250px;
      margin: 10px auto 5px;
    }

    .contact-form
    {
        margin-top: 20px;
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

    .location
    {
      margin-top: 20px;
      margin-left: 80px;
    }

    .follow
    {
      background: #fff;
    }


    .btn
    {
        margin-top: 15px;
    }


    .address_bar ul
    {
      list-style-type: none;
      float: left;
      padding: 5px;
      padding-left: 50px;
      background: #aecbd6;
      width: 100%;
      height: auto;
      justify-content: center;
    }
    .address_bar ul li
    {
      float: left;
      padding: 10px;
      padding-left: 80px;
    }

    .address_bar .fa
    {
      margin: 6px;
      margin-left: 10px;
      color: #007bff;
      font-weight: bold;
    }

    /*--Footer --*/

    .footer
    {
    background:	#E6E6FA;
    box-sizing:border-box;
    margin-top: 40px;
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
                          <a class="nav-link" href="active"><i class="fa fa-phone"></i>CONTACT</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </section>

          <div class="img_box">
              <img src="images/green.jpg" width="100%" height="400px">
          </div>

          <!---Contact Us--->
          <section id="contact">
              <div class="container">
              <h1>Get In Touch</h1>
              <p>We would love to hear from you. Let us know if you are facing any problems, have any questions or want to share feedback. We are always happy to help!</p>
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

                      <div class="col-md-6">
                        <div class="location">
                          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d598.0784152209957!2d75.78945784229407!3d26.883389703325193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db437542cd5a1%3A0x61bdb930a70f32b0!2s119%2C%20Love%20Kush%20Nagar%201%2C%20Ambedkar%20Nagar%2C%20Tonk%20Phatak%2C%20Jaipur%2C%20Rajasthan%20302015!5e0!3m2!1sen!2sin!4v1617991271289!5m2!1sen!2sin" width="450" height="350" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                      </div>
                    </div>
                  </div>

                </section>

                    <div class="address_bar">
                      <ul>
                        <li><b>Address:</b><i class="fa fa-map-marker"></i> XYZ Road, Banglore, IN</li>
                        <li><b>Phone:</b><i class="fa fa-phone"></i>+0141 1234567890</li>
                        <li><b>Email:</b><i class="fa fa-envelope-o"></i>digitalvillage@gmail.com</li>
                        <li><label><b>Get Social:</b></label>
                          <a href="#"><i class="fa fa-facebook"></i></a>
                          <a href="#"><i class="fa fa-youtube-play"></i></a>
                          <a href="#"><i class="fa fa-twitter"></i></a>
                          <a href="#"><i class="fa fa-google-plus"></i></a>
                        </li>
                      </ul>
                    </div>



                    <!--footer--->
                                       <div class="footer">
                                         <div class="footer-container">
                                           <div class="row">
                                               <div class="footer-col-1">
                                               <a href="C:/Users/Lenovo/Desktop/Digital Village/home/home.html"><img src="images/dv_logo.png" width:"100px" height="100px"></a>
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
                                                   <li><a href="aboutus.jsp">About us</a></li>
                                                   <li><a href="products.jsp">Products</a></li>
                                                   <li><a href="gallery1.jsp">Gallery</a></li>
                                                   <li><a href="active">Contact</a></li>
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

