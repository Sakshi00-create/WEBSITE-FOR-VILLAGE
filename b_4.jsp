<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Single Product</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
      <!-- CSS only -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
      <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

      <style>

      *
      {
        padding: 0;
        margin: 0;
        box-sizing:border-box;
      }

      body
      {
          font-family:'Quicksand','sans-serif';
      }

      /*----Navigation bar----*/

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

      .main
      {
        box-sizing:border-box;
        margin:0;
        padding:0;
      }

      .main-row
      {
        display: flex;
      }

      .main-col-1
      {
        border-radius: 10px;
        background: #f5f5f5;
        top:0;
        left: 0;
        max-width: 300px;
      }

      .main-col-1 h2
      {
        padding-left:20px;
        margin: 20px;
        font-size: 25px;
      }

      .links ul
      {
        margin:30px;
      }

      .links li
      {
        list-style-type: none;
        padding-bottom: 15px;
      }

      .links li a
      {
        text-decoration: none;
        color: black;
        font-size: 18px;
      }

      .main-col-2
      {
        max-width: 1000px;
      }

      .single-product .left img
      {
        margin-top: 70px;
        display:block;
        margin-left: 50px;
        border-radius: 10px;
      }

      .single-product .right
      {
        margin-top: 20px;
        padding: 25px;
      }

      .right h4, .right h1, .right h3, .right p
      {
        margin-left:60px;
        margin-top: 25px;
      }

      .single-product .fa
      {
        color: #ff523b;
        margin-left: 10px;
      }

      .single-product .right ul
      {
        font-size:18px;
        margin-left:70px;
        margin-top: 10px;
      }

      .small-img-row
      {
        display: flex;
      }

      .small-img-col
      {
        margin-left: 10px;
        flex-basis: 25%;
        cursor: pointer;
      }

      .seller-btn
      {
        width: 250px;
        padding:15px;
        margin-top: 20px;
        margin-left: 100px;
        background-color: #0079bf;
        border-radius: 10px;
      }
      .seller-btn a
      {
        color: #fff;
        font-size: 20px;
        text-decoration: none;
      }


      /*---Recommended Products---*/

      .recommended
      {
        margin-top: 120px;
        margin-left: 30px;
      }

      .recommended h2
      {
          text-align: center;
          color: red;
          position: relative;
          font-style: bold;
      }


      .recommended .row
      {
        display: flex;
        margin-top: 50px;
        margin-left: 50px;
      }

      .recommended .col-4
      {
        text-align: center;
        flex-basis: 22%;
        padding: 10px;
        margin-left: 10px;
        margin-bottom: 50px;
      }


      .recommended .col-4 h4
      {
        padding-top: 10px;
      }

      .recommended .col-4 p
      {
        color: red;
      }

      .recommended .col-4 img
      {
        transition: transform 0.5s;
        width: 100%;
      }

      .recommended .col-4 img:hover
      {
        transform: translateY(-5px);
      }


      .img-btn a
      {
        width: 150px;
        text-decoration: none;
        display: inline-block;
        margin-left: 0 10px;
        padding: 8px 12px;
        background: #90ee90;
        color: black;
        border-radius: 5px;
      }

      .img-btn a:hover
      {
          color: #000;
          background: grey;
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
        font-size: 18px;
        padding-top: 40px;
      }

      .footer .row
      {
        display: flex;
      }

      .footer h3
      {
        color: black;
        padding-bottom: 20px;
      }
      .footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4
      {
        flex-basis: 25%;
        max-width: 350px;
        padding-bottom: 20px;
      }

      .footer-col-2 li, .footer-col-3 li, .footer-col-4 li
      {
        font-size: 18px;
        list-style-type: none;
        padding-top: 3px;
      }

      .footer-col-2 a, .footer-col-3 a
      {
        text-decoration: none;
        color: #000;
      }

      .footer-col-1
      {
        text-align: center;
      }

      .footer-col img
      {
          padding-bottom: 20px;
      }

      .social .fa
      {
        margin-top: 20px;
        margin-left: 10px;
        padding-bottom: 20px;
        color: black;
        font-weight: bold;
      }

      .social .fa:hover
      {
        color: blue
      }

      .footer-col-4 h3
      {
        padding-left: 10px;
      }

      </style>
    </head>

    <body>
      <!---Navigation Bar--->
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="C:/Users/Lenovo/Desktop/Digital Village/home/home.html"><img src="images/dv_logo.png"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link" href="C:/Users/Lenovo/Desktop/Digital Village/home/home.html"><i class="fa fa-home"></i>HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="C:/Users/Lenovo/Desktop/Digital Village/about us/about.html"><i class="fa fa-user"></i>ABOUT US</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="C:/Users/Lenovo/Desktop/Digital Village/event/event.html"><i class="fa fa-calendar"></i>EVENT</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="C:/Users/Lenovo/Desktop/Digital Village/gallery/gallery.html"><i class="fa fa-picture-o"></i>GALLERY</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="products.jsp"><i class="fal fa-bags-shopping"></i>PRODUCT & TRADE</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="C:/Users/Lenovo/Desktop/Digital Village/contact/contact.html"><i class="fa fa-phone"></i>CONTACT</a>
                </li>
              </ul>

            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

          </div>
        </div>
      </nav>
</section>

<!---All Products--->

<div class="main">
  <div class="row">
    <div class="main-col-1">
        <h2>Menu</h2>
        <div class="links">
          <ul>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/bags/bags.html">Bags</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/baskets/basket.html">Baskets</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/teracotta/teracotta.html">Decor teracotta pot</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/face_masks/face_mask.html">Face masks</a></li>
            <li><a href="flower_pot.jsp">Flower pots</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/furniture/furniture.html">Handmade Chair/Table</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/fans/fans.html">Handmade Fans</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/footwear/footwear.html">Handmade footwear</a></li>
            <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/tulsi_pot/tulsi_pot.html">Tulsi Planter Pot</a></li>
          </ul>
      </div>
    </div>
    <!---js for product gallery---->

      <script>
          function change_img(sw)
          {
            var pic;
            if (sw == 0){
               pic="images/b_4_1.jpg"
             }
            else {
              pic = "images/b_4_2.jpg"
            }

            document.getElementById('myImage').src = pic;
          }
      </script>


     <div class="main-col-2">
       <div class="single-product">
         <div class="row">
             <div class="col-6 left">
                   <img src="images/b_4_1.jpg" alt="Handmade basket" width="100%" height="620px" id="myImage">

                   <div class="small-img-row">
                       <div class="small-img-col">
                           <img src="images/b_4_1.jpg" alt="Handmade basket" width="100%"  height="150px" onclick="change_img(0)">
                       </div>
                       <div class="small-img-col">
                           <img src="images/b_4_2.jpg" alt="Handmade basket" width="100%" onclick="change_img(1)">
                       </div>
                       <div class="small-img-col">
                           <img src=""  width="100%" onclick="">
                       </div>
                       <div class="small-img-col">
                           <img src=""  width="100%" onclick="">
                       </div>
                   </div>
             </div>

             <div class="col-6 right">
                 <p>Home / Flower Pot </p>
                 <h1>Soiled Large Tub Handmade Cane Planter (Set of 2)</h1>
                 <h4>Price: <sup>?</sup><b>550</b></h4>

                 <h3>Product Details <i class="fa fa-indent"></i></h3>
                 <ul>
                   <li>100% Eco-friendly</li>
                   <li>It is lightweight and portable.</li>
                   <li>Washable, Easy to maintain and clean using a damp cloth or brush.</li>
                   <li>This product is quality for money. </li>
                   <li>Spacious enough to be used as basket planters or storage units for storing things.</li>
                   <li>Designs are made by soaking cane pieces and weaving vertically to create a structure</li>
                   <li>Revamp your bedroom, living room, garden, cafe, balcony or patio with a flower pot stand that intensifies the ambience in your area.</li>
                 </ul>

                 <div class="seller-btn">
                    <a href="#">SELLER'S DETAILS &#8594;</a>
                 </div>
             </div>
          </div>
       </div>
     </div>
    </div>
  </div>

  <!---Recommended products--->

    <div class="recommended">
      <h2>RECOMMENDED  PRODUCTS</h2>
        <div class="row">
          <div class="col-4">
          <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_4.html"><img src="images/b_4_1.jpg" height="300px" width="200px"></a>
            <h4>Bamboo Planter Stand</h4>
            <p><sup>?</sup>300</p>
            <div class="img-btn">
                <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_4.html">Details</a>
            </div>
          </div>

          <div class="col-4">
          <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_1.html"><img src="images/b_1_1.jpg" height="300px" width="200px"></a>
            <h4>Solid Handmade Cane Planter</h4>
            <p><sup>?</sup>400</p>
            <div class="img-btn">
                <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_1.html">Details</a>
            </div>
          </div>

          <div class="col-4">
          <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_6.html"> <img src="images/b_6_1.jpg"  height="300px" width="200px"></a>
            <h4>Tub Handmade Cane Planter </h4>
            <p><sup>?</sup>550</p>
            <div class="img-btn">
                <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_6.html">Details</a>
            </div>
          </div>

          <div class="col-4">
          <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_2.html"><img src="images/b_2_1.jpg" height="300px" width="200px"></a>
            <h4>Handmade Cane Flower Pot </h4>
            <p><sup>?</sup>800</p>
            <div class="img-btn">
                <a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/flower_pot/flower_pot_links/b_2.html">Details</a>
            </div>
          </div>

        </div>





  <!---Message---->

  <div class="msg-box">
    <h3>If you are a seller and want to modify your details then click the button below.</h3>
    <a href="seller_mod2.jsp" class="msg-btn">Modify</a>
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
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/about us/about.html">About us</a></li>
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/all_products/all_product.html">Products</a></li>
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/gallery/gallery.html">Gallery</a></li>
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/contact/contact.html">Contact</a></li>
                                   </ul>
                                 </div>

                                 <div class="footer-col-3">
                                   <h3>Information</h3>
                                   <ul>
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/news/news.html">News</a></li>
                                     <li><a href="C:/Users/Lenovo/Desktop/Digital Village/event/event.html">Events</a></li>
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

