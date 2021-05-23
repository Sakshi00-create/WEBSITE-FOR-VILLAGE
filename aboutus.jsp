
<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="vision.css">
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <!-- <link rel="stylesheet" type="text/css" href="aboutus.css"> -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Orelega+One&display=swap');
        * {
            text-decoration: none;
            list-style: none;
            box-sizing: border-box;
        }
        
        nav {
            background: rgba(0, 0, 0, 0.5);
            height: 80px;
            width: 100%;
            margin: 5px;
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
        
        a.active,
        a:hover {
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
        
        body {
            font-weight: Century Gothic;
            /* background: url(picky.jpg) no-repeat;
    background-size: cover;
    background-attachment: fixed; */
            background-color: lightcoral;
            height: 100vh;
            overflow-x: hidden;
        }
        
        .text {
            color: lime;
            font-family: cursive;
            font-weight: bold;
            font-size: 80px;
            position: relative;
            left: 5%;
            top: 20%;
        }
        
        .text:hover {
            text-underline-position: below;
            text-decoration: indigo;
        }
        
        .slider {
            background-repeat: no-repeat;
            background-position: center;
            background-size: auto;
            height: 70vh;
            animation: slide 40s infinite;
            transition: ease-out;
            margin: 0;
            padding: 0;
            margin-bottom: 30px;
            font-size: 55px;
            color: gold;
            font-family: cursive;
            font-weight: bold;
        }
        
        @keyframes slide {
            0% {
                background-image: url('images/bgeve.jpg');
            }
            20% {
                background-image: url('images/Gallerypic.png');
            }
            30% {
                background-image: url('images/eventpic1.png');
            }
            40% {
                background-image: url('images/newspic.png');
            }
            50% {
                background-image: url('images/product.jpg');
            }
            60% {
                background-image: url('images/productnew.jpg');
            }
            70% {
                background-image: url('images/eventpic1.png');
            }
            80% {
                background-image: url('images/newspic.png');
            }
            90% {
                background-image: url('images/bgeve.jpg');
            }
            100% {
                background-image: url('images/villagepic.jpg');
            }
        }
        
        .about1 {
            text-align: center;
            justify-content: center;
            margin: 0% 35%;
            margin-bottom: 0%;
        }
        
        .title {
            font-family: 'Segoe UI', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 35px;
            text-decoration: none;
            position: relative;
        }
        
        .title::after {
            content: '';
            display: block;
            width: 0%;
            position: absolute;
            left: 50%;
            bottom: 0%;
            height: 4px;
            background: #fff;
            transition: all 500ms ease;
        }
        
        .title:hover::after {
            width: 100%;
            left: 0%;
            /*transition: width .3s;*/
            font-size: 50px;
            background-color: black;
        }
        
        .about {
            width: 100%;
            margin: 0% auto 1% auto;
            overflow: hidden;
            zoom: 1;
        }
        
        .us {
            width: 80%;
            margin: auto;
        }
        
        .content {
            margin-top: 0;
            width: 55%;
            float: left;
            text-align: left;
            background-color: whitesmoke;
            padding: 0 20px;
            box-sizing: border-box;
        }
        
        .content h3 {
            color: darkblue;
            letter-spacing: 1px;
            font-size: 20px;
            font-weight: 600;
        }
        
        .content p {
            font-size: 20px;
            color: black;
        }
        
        .content ul {
            list-style: none;
            margin-top: 10px;
        }
        
        .content ul li i {
            padding-right: 8px;
            color: black;
        }
        
        .content ul li span {
            color: black;
            font-size: 20px;
            letter-spacing: 2px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        .content .social a {
            text-decoration: none;
            color: #10d0d0;
            font-size: 25px;
            padding: 0px 25px;
        }
        
        .content .social a:hover {
            color: #fff;
            transition: 1s ease;
        }
        
        .image {
            width: 45%;
            float: right;
        }
        
        .image img {
            height: 335px;
            border-style: ridge;
            border: tomato 5px solid;
        }
        
        @media screen and (max-width:900px) {
            .title {
                width: 90%;
                margin: 10%;
                padding-top: 80px;
                text-align: center;
                font-size: 25px;
            }
            .content {
                width: 100%;
                float: none;
            }
            .content .social {
                margin-top: 30px;
                text-align: center;
            }
            .content .social a {
                font-size: 21px;
            }
            .image {
                width: 100%;
                float: none;
            }
        }
        
        .extra {
            padding: 0;
            box-sizing: border-box;
            background-color: darkblue;
        }
        
        .container span,
        .container1 span {
            font-size: 1.1em;
            font-family: 'Orelega One', cursive;
            font-weight: bold;
        }
        
        .outer {
            display: grid;
            grid-gap: 1em;
            grid-auto-rows: 370px;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            padding: 20px;
        }
        
        .container {
            justify-self: end;
        }
        
        .container,
        .container1 {
            text-align: center;
            background-color: rgba(0, 0, 0, .5);
            color: whitesmoke;
            font-size: 25px;
            width: 350px;
            padding-top: 0%;
            border: 5px solid;
            box-sizing: border-box;
        }
        
        .container h1,
        .container1 h1 {
            background-color: skyblue;
            position: relative;
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


</head>

<body>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
    </label>
        <label class="logo">Digital Village</label>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="event.jsp">Events</a></li>
            <li><a href="news.jsp">News</a></li>
            <li>
                <a href="gallery1.jsp">Gallery</a>
            </li>
            <li><a href="products.jsp">Product & Trade</a></li>
            <li><a href="contact.jsp">Contact</a></li>

        </ul>
    </nav>


    <div class="slider">
        <div class="text">
            WHAT you can do
        </div>
    </div>

    <div class="about1">
        <h1 class="title">
            Why choose us ?
        </h1>
    </div>
    <section class="about">
        <div class="us">
            <div class="content">
                <h3>Our team is a dedicated group of developers committed to the development of this village </h3>
                <p>We diligently are working towards our vision whilst accomplising each mission on our way

                    <ul style="font-size: medium;">
                        <li><span><i class="fas fa-circle-notch"></i>Make your daily tasks easier</span></li>
                        <li><span><i class="fas fa-circle-notch"></i>Admin would assist you along the way to grow your business digitally</span></li>
                        <li><span><i class="fas fa-circle-notch"></i>Development of the Village is of primary importance to us and we would always try to keep you updated and ahead in time.</span></li>
                        <li></li>

                    </ul>
                    <!-- <div class="social">
                        <a href=""><i class="fab fa-facebook"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                        <a href=""><i class="fab fa-twitter"></i></a>
                    </div> -->
                </p>
            </div>
            <div class="image">
                <img src="images/WhatsApp Image 2021-05-21 at 1.11.48 AM.jpeg">
            </div>
        </div>
    </section>

    <div class="extra">
        <div class="outer">


            <div class="container">
                <!--<img src="vision.png" style="background-blend-mode: lighten;">-->
                <h1>Mission</h1>
                <p>Our mission is to <span>spread</span> awareness, <span>establise</span> online systems and <span>promoting</span> local products in global market through our website.
                </p>
                <div class="spacer"></div>
            </div>

            <!--
                 
                <img src="vision.png" style="background-blend-mode: lighten;">-->
            <div class="container1">
                <h1>Vision</h1>
                <p>
                    <bold>To build a intuitive system for <span>online solution</span> to villager's life events and <span>online trade</span> of local goods</bold>

                </p>
                <div class="spacer"></div>
            </div>


        </div>
    </div>

    <div class="footer">
        <div class="container2">
            <div class="row">
                <div class="footer-col-1">
                    <img src="images/dv_logo.png" width="100px" height="100px">
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
                        <li>About us</li>
                        <li>Products</li>
                        <li>Gallery</li>
                    </ul>
                </div>

                <div class="footer-col-3">
                    <h3>Information</h3>
                    <ul>
                        <li>News</li>
                        <li>Events</li>
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



</body>

</html>
