       
<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="check.css">
    <style>
        * {
            padding: 0;
            margin: 0;
            text-decoration: none;
            list-style: none;
            box-sizing: border-box;
        }
        
        body {
            font-family: montserrat;
        }
        
        nav {
            background: rgba(0, 0, 0, 0.7);
            height: 80px;
            width: 100%;
        }
        
        label.logo {
            color: white;
            font-size: 35px;
            line-height: 80px;
            padding: 0 100px;
            font-weight: bold;
        }
        
        nav ul {
            float: right;
            margin-right: 20px;
        }
        
        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px;
        }
        
        nav ul li a {
            color: white;
            font-size: 17px;
            padding: 7px 13px;
            border-radius: 3px;
            text-transform: uppercase;
        }
        
        nav a.active,
        nav a:hover {
            background: #1b9bff;
            transition: .5s;
        }
        
        .checkbtn {
            font-size: 30px;
            color: white;
            float: right;
            line-height: 80px;
            margin-right: 40px;
            cursor: pointer;
            display: none;
        }
        
        #check {
            display: none;
        }
        
        @media (max-width: 952px) {
            label.logo {
                font-size: 30px;
                padding-left: 50px;
            }
            nav ul li a {
                font-size: 16px;
            }
        }
        
        @media (max-width: 858px) {
            .checkbtn {
                display: block;
            }
            ul {
                position: fixed;
                width: 100%;
                height: 100vh;
                background: #2c3e50;
                top: 80px;
                left: -100%;
                text-align: center;
                transition: all .5s;
            }
            nav ul li {
                display: block;
                margin: 50px 0;
                line-height: 30px;
            }
            nav ul li a {
                font-size: 20px;
            }
            a:hover,
            a.active {
                background: none;
                color: #0082e6;
            }
            #check:checked~ul {
                left: 0;
            }
        }
        
        .container {
            width: 350px;
            height: 350px;
            cursor: pointer;
            border-radius: 5px;
            border-style: ridge;
            border-width: 10px 0px 20px 20px;
            border-color: purple;
            box-sizing: border-box;
            border-radius: 25px;
            margin: 5px;
        }
        
        .img {
            display: flex;
            flex-wrap: wrap;
            padding: 0px 20px;
            background: violet;
        }
        
        #outer {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
            visibility: hidden;
            opacity: 0;
            transition: all ease .3s;
        }
        
        #outer.show {
            visibility: visible;
            opacity: 1;
        }
        
        #inner {
            text-align: center;
            position: relative;
            top: 50%;
            transform: translateY(-50%);
        }
        
        #inner img {
            width: 1200px;
            height: 700px;
            border: none;
        }
        
        .footer {
            bottom: 0;
            background: salmon;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            text-decoration: none;
            font-size: 25px;
            padding: 40px 0 20px;
        }
        
        .footer .row {
            display: flex;
        }
        
        .footer h3 {
            color: black;
            margin-bottom: 20px;
            text-decoration: underline;
        }
        
        .footer-col-1,
        .footer-col-2,
        .footer-col-3,
        .footer-col-4 {
            max-width: 350px;
            margin-bottom: 20px;
            font-size: 1em;
        }
        
        .footer-col-2 li,
        .footer-col-3 li,
        .footer-col-4 li {
            list-style-type: none;
            padding-top: 3px;
            font-size: 1em;
        }
        
        .footer-col-1 {
            text-align: center;
            flex-basis: 25%;
        }
        
        .footer-col-1 img {
            margin-bottom: 20px;
        }
        
        .social .fa {
            margin-left: 10px;
            margin-bottom: 20px;
            color: black;
            font-weight: bold;
        }
        
        .social .fa:hover {
            color: blue
        }
        
        .footer-col-2 {
            flex-basis: 25%;
        }
        
        .footer-col-3 {
            flex-basis: 25%;
        }
        
        .footer-col-4 h3 {
            padding-left: 10px;
        }
        
        .footer-col-4 {
            flex-basis: 25%;
        }
    </style>
    <script>
        var zoomImg = function() {
            ///clone
            var clone = this.cloneNode();
            clone.classList.remove("zoom");


            //Append EVIL clone
            var a = document.getElementById("inner");
            a.innerHTML = "";
            a.appendChild(clone);


            //Show
            a = document.getElementById("outer");
            a.classList.add("show");
        }


        window.addEventListener("load", function() {
            // On click images

            var images = document.getElementsByClassName("container");
            if (images.length > 0) {
                for (let img of images)
                    img.addEventListener("click", zoomImg);
            }
            // Clone Overlay
            document.getElementById("outer").addEventListener("click", function() {
                this.classList.remove("show");
            });
        });
    </script>
</head>
    <body>

        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
            <label class="logo">Digital Village</label>
            <ul>
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
                        <a class="nav-link" href="comp1.jsp">COMPLAINTS</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.jsp"><i class="fa fa-phone"></i>CONTACT</a>
                      </li>
            </ul>
        </nav>

        <div id="outer">
            <div id="inner"></div>
        </div>
        <div class="img">

            <img src="images/pexels-amdad-hossain-6051686.jpg" class="container" />
            <img src="images/pexels-deep-kumar-4253606.jpg" class="container" />
            <img src="images/pexels-jonathan-borba-6622955.jpg" class="container" />
            <img src="images/pexels-jonathan-borba-6632603.jpg" class="container" />
            <img src="images/pexels-julia-volk-5270671.jpg" class="container" />
            <img src="images/pexels-nav-photography-5459139.jpg" class="container" />
            <img src="images/pexels-omkar-pandhare-3732475.jpg" class="container" />
            <img src="images/pexels-orest-sv-1821712.jpg" class="container" />
            <img src="images/pexels-pixabay-280221.jpg" class="container" />
            <img src="images/pexels-plato-terentev-5909696.jpg" class="container" />
            <img src="images/pexels-plato-terentev-5910353.jpg" class="container" />
            <img src="images/pot.jpg" class="container" />
            <img src="images/san-fermin-pamplona-navarra-0D7Wtqhe-AQ-unsplash.jpg" class="container" />
            

        </div>
        <div class="footer">
            <div class="container2">
                <div class="row">
                    <div class="footer-col-1">
                        <img src="dv_logo.png" width="100px" height="100px">
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
                            <li><a href="">News</a></li>
                            <li><a href="">Events</a></li>
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