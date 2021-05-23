
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Product Details</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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


      .navbar-brand img
      {
        height: 40px;
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


      /*----All Products---*/
      .product-container
      {
        background-color: #cae4f1;
      }

      .product-container h1
      {
        text-align: center;
        padding-top: 50px;
      }


      .product-container .row
      {
        margin-top:50px;
        padding-left: 10px;
        padding-right: 20px;
        padding-bottom: 70px;
        display: flex;
        flex-wrap: wrap;
        justify-content:space-around;
      }

      .product-container .col-4
      {
        margin-left: 10px;
        flex-basis: 24%;
      }

      figure
      {
        overflow: hidden;
      }
      .col-img img
      {
        height:550px;
        width:470px;
        border-radius: 10px;
      }

      .col-img #zoom-In img
      {
        transform: scale(1);
        transition: 1s ease-in-out;
      }

      .col-img #zoom-In:hover img
      {
        transform: scale(1.3);
      }

      .col-img
      {
        position: relative;
      }
      .img-desc
      {
        color: #fff;
        font-weight: bolder;
        position: absolute;
        bottom:20px;
        left: 30px;
      }

      .img-btn
      {
        margin: 20px auto 50px;
      }
      .img-btn a
      {
        width: 170px;
        text-decoration: none;
        display: inline-block;
        margin-left: 0 10px;
        padding: 8px 12px;
        background: white;
        color: black;
        z-index: 1;
        transition: color 0.5s;
        position: relative;
        border-radius: 5px;
      }
      .img-btn a span
      {
          position: absolute;
          width: 0;
          height: 100%;
          top:0;
          left: 0;
          z-index: -1;
          transition: 0.5s;
          background-color: grey;

      }

      .img-btn a:hover span
      {
        opacity: 0.5;
        width:100%;
      }

      .img-btn a:hover
      {
          color: #000;
      }

      /*---Message box----*/

      .msg-box
      {
        margin: 80px 0;
        text-align: center;
      }

      .msg-box .msg-btn
      {
        width: 150px;
        text-decoration: none;
        display: inline-block;
        margin: 30px 10px;
        padding: 8px 12px;
        background: skyblue;
        color: #fff;
        border-radius: 5px;
      }


            /*--Footer --*/

      .footer
      {
        background:	#E6E6FA;
        box-sizing:border-box;
        margin:0;
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
      .footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4
      {
        max-width: 350px;
        margin-bottom: 20px;
      }

      .footer-col-2 li, .footer-col-3 li, .footer-col-4 li
      {
        font-size: 18px;
        list-style-type: none;
        padding-top: 3px;
      }

      .footer-col-2 a, .footer-col-3 a
      {
        color: #000;
        text-decoration: none;
      }

      .footer-col-1
      {
        text-align: center;
        flex-basis: 25%;
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

      .footer-col-2
      {
        flex-basis: 25%;
      }

      .footer-col-3
      {
        flex-basis: 25%;
      }
      .footer-col-4 h3
      {
        padding-left: 10px;
      }

      .footer-col-4
      {
        flex-basis: 25%;
      }

      </style>
    </head>

    <body>
      <!---Navigation Bar--->
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="home.jsp"><img src="images/dv_logo.png"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
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

            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

          </div>
        </div>
      </nav>


<!---All Products--->

<div class="product-container">
    <h1>ALL COLLECTION</h1>

    <div class="small-container">
        <div class="row">
            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="flower_pot.jsp"><img src="images/pot.jpg"></a>
                  </figure>
                </div>

              <div class="img-desc">
                <h3>HANDMADE FLOWER POTS</h3>
                <div class="img-btn">
                    <a href="flower_pot.jsp"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
              </div>
            </div>

            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                   <a href="/basket.jsp"><img src="images/basket.jpg"></a>
                  </figure>
                </div>

              <div class="img-desc">
                <h3>HANDMADE BASKETS</h3>
                <div class="img-btn">
                    <a href="/basket.jsp"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
            </div>
          </div>

            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                  <a href="/furniture.jsp"><img src="images/furniture.jpg"></a>
                  </figure>
                </div>
              <div class="img-desc">
                <h3>HANDMADE FURNITURE</h3>
                <div class="img-btn">
                    <a href="/furniture.jsp"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>

    <div class="small-container">
        <div class="row">
            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="footwear/footwear.html"><img src="images/footwear.jpeg"></a>
                  </figure>
                </div>

              <div class="img-desc">
                <h3>HANDMADE FOOTWEARS</h3>
                <div class="img-btn">
                    <a href="footwear/footwear.html"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
              </div>
            </div>

            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="tulsi_pot/tulsi_pot.html"><img src="images/tulsimata.jpg"></a>
                  </figure>
                </div>
              <div class="img-desc">
                <h3>HANDMADE TULSI PLANTERS</h3>
                <div class="img-btn">
                    <a href="tulsi_pot/tulsi_pot.html"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
            </div>
            </div>
        
            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="face_mask/face_mask.html"><img src="images/face_mask.jpg"></a>
                  </figure>
                </div>
              <div class="img-desc">
                <h3 style="color:#000;">HANDMADE FACE MASKS</h3>
                <div class="img-btn">
                    <a href="face_mask/face_mask.html"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>


    <div class="small-container">
        <div class="row">
            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="fans/fans.html"><img src="images/fans.jpg"></a>
                  </figure>
                </div>

              <div class="img-desc">
                <h3 style="color:#000;">HANDCRAFTED FANS</h3>
                <div class="img-btn">
                    <a href="fans/fans.html"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
              </div>
            </div>

            <div class="col-4">
              <div class="col-img">
                <div id="zoom-In">
                  <figure>
                    <a href="bags/bags.html"><img src="images/bags.jpg"></a>
                  </figure>
                </div>

              <div class="img-desc">
                <h3 style="color:#000;">HANDMADE BAGS</h3>
                <div class="img-btn">
                    <a href="bags/bags.html"><span></span>VIEW PRODUCTS</a>
                </div>
              </div>
            </div>
          </div>

                    <div class="col-4">
                      <div class="col-img">
                        <div id="zoom-In">
                          <figure>
                            <a href="teracotta/teracotta.html"><img src="images/teracotta.jpg"></a>
                          </figure>
                        </div>

                      <div class="img-desc">
                        <h3>DECOR TERACOTTA POTS</h3>
                        <div class="img-btn">
                            <a href="teracotta/teracotta.html"><span></span>VIEW PRODUCTS</a>
                        </div>
                      </div>
                    </div>
                  </div>
      </div>
    </div>
  </div>

  <!---Message---->
  <div class="msg-box">
    <h3>If you are a seller and want to modify your details then click the button below.</h3>
    <a href="seller_mod2.jsp" class="msg-btn">Modify</a>
  </div>
  
  <div class="msg-box">
    <h3>If you are a user and want to add your details then click the button below.</h3>
    <a href="selleradd1.jsp" class="msg-btn">ADD DETAILS</a>
  </div>


  <!--footer--->
                     <div class="footer">
                       <div class="footer-container">
                         <div class="row">
                             <div class="footer-col-1">
                             <a href="home.jsp"> <img src="images/dv_logo.png" width:"100px" height="100px"></a>
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

                             <div class="footer-col-4">
                               <h3>Contact Us</h3>
                               <ul>
                                 <li>Address: ##########</li>
                                 <li>Whatsapp: +91-32462534</li>
                                 <li>Phone: +91-32462534</li>
                                 <li>Email: digitalvillage@gmail.com</li>
                               </ul>
                             </div>
                         </div>
                       </div>

                     </div>

      </body>
</html>

