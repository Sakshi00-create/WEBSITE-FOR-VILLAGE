
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: lightseagreen;
            font: white;
        }
        /*NAv- BAR*/
        
        nav {
            background: rgba(0, 0, 0, 0.5);
            height: 80px;
            width: 100%;
        }
        
        label.logo {
            color: white;
            font-size: 35px;
            line-height: 80px;
            padding: 0 100px;
            font-weight: bold;
            background-color: transparent;
        }
        
        nav ul {
            float: right;
            margin-right: 20px;
        }
        
        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px;
            background-color: transparent;
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
        
        .image {
            width: inherit;
            height: inherit;
        }
        
        .image img {
            width: 100%;
            height: 200px;
        }
        
        a,
        ol li {
            text-decoration: none;
            background-color: transparent;
            color: firebrick;
            font: bolder;
            font-weight: 600;
        }
        
        a:hover {
            font-size: 1em bold;
            color: black;
            background-color: whitesmoke;
        }
        
        h4 {
            font-size: 2em;
            background-color: transparent;
            text-align: center;
        }
        
        p {
            background-color: #fbfbf8;
            font-size: 1.2em;
            line-height: 1.8;
            padding: 0px 10px;
        }
        
        ol {
            background-color: #fbfbf8;
            font-size: 1.2em;
            line-height: 1.8;
            padding: 20px;
            margin: 0px;
            list-style: disc;
        }
        
        .container {
            width: 85%;
            margin: 50px auto;
            border: 1px solid black;
            display: grid;
            grid-template-rows: 0.1fr 1fr 450px 0.6fr;
            grid-gap: 2px;
            grid-template-columns: repeat(3, 1fr) 0.7fr;
            grid-template-areas: 'title title title title' 'box2 box3 box4 box5' 'box8 box6 box6 box5' 'box7 box7 box7 box5';
        }
        
        .title {
            background-color: #fbfbf8;
            grid-column: 1/-1;
            grid-area: title;
            font-family: 'Times New Roman', Times, serif;
        }
        
        .box2 {
            background-color: #fbfbf8;
            grid-area: box2;
            border: 2px solid;
        }
        
        .box3 {
            background-color: #fbfbf8;
            grid-area: box3;
            border: 2px solid;
        }
        
        .box4 {
            background-color: #fbfbf8;
            grid-area: box4;
            border: 2px solid;
        }
        
        .box5 {
            grid-row: 2/5;
            grid-column: 4/5;
            background-color: #fbfbf8;
            grid-area: box5;
            border: 2px solid;
        }
        
        .box8 {
            grid-area: box8;
            grid-row: 3/4;
            grid-column: 1/2;
            background-color: #fbfbf8;
        }
        
        .box6 {
            grid-column: 2/ 4;
            grid-row: 3/4;
            grid-area: box6;
            background-color: #fbfbf8;
            border: 2px solid;
        }
        
        .box7 {
            grid-area: box7;
            grid-column: 1/4;
            grid-row: 4/5;
            background-color: #fbfbf8;
            border: 2px solid;
        }
        
        @media only screen and (max-width:700px) {
            .container {
                grid-template-columns: 1fr;
                grid-template-rows: 0.5fr 1fr 0.6fr 0.5fr 1fr 0.6fr 1fr;
                grid-template-areas: "title" "box2" "box3" "box4" "box5""box8" "box6" "box7"
            }
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
            background: salmon;
        }
        
        .footer h3 {
            color: black;
            margin-bottom: 20px;
            text-decoration: underline;
            background: salmon;
        }
        
        .footer-col-1,
        .footer-col-2,
        .footer-col-3,
        .footer-col-4 {
            max-width: 350px;
            margin-bottom: 20px;
            font-size: 1em;
            background: salmon;
        }
        
        .footer-col-2 li,
        .footer-col-3 li,
        .footer-col-4 li {
            list-style-type: none;
            padding-top: 3px;
            font-size: 1em;
            background: salmon;
        }
        
        .footer-col-1 {
            text-align: center;
            flex-basis: 25%;
            background: salmon;
        }
        
        .footer-col-1 img {
            margin-bottom: 20px;
            background: salmon;
        }
        
        .social .fa {
            margin-left: 10px;
            margin-bottom: 20px;
            color: black;
            font-weight: bold;
            background: salmon;
        }
        
        .social .fa:hover {
            color: blue;
            background: salmon;
        }
        
        .footer-col-2 {
            flex-basis: 25%;
            background: salmon;
        }
        
        .footer-col-3 {
            flex-basis: 25%;
            background: salmon;
        }
        
        .footer-col-4 h3 {
            padding-left: 10px;
            background: salmon;
        }
        
        .footer-col-4 {
            flex-basis: 25%;
            background: salmon;
        }
        
        .footer-col-1 p {
            background: salmon;
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
        <ul style="list-style: none; text-decoration: none; background-color:transparent;">
            
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
    <div class="container">

        <div class="title">

            <h4>Get latest Schemes, News, Apps and Website by clicking the title</h4>


        </div>
        <div class="box2">
            <div class="content">
                <p>
                    <a href="https://gadgets.ndtv.com/internet/news/government-to-start-digital-village-programme-soon-says-prasad-1639539">Government to Start Digital Village Programme Soon, Says Prasad</a> Government will soon launch a new programme,
                    Digital Village, to provide services like health and education in villages with the help of technology. The programme would be rolled out in 100 villages initially and will be expanded later, Law and IT Minister Ravi Shankar Prasad
                    said Monday. "We are going to unleash another important initiative - Digital Village. As per my understanding, it will be a collector-driven initiative. We propose to begin with 100 villages and expand it later," Prasad said at the
                    Digital India Awards event in New Delhi.
                </p>
            </div>
        </div>
        <div class="box3">
            <div class="content">
                <p>
                    <a href="https://economictimes.indiatimes.com/news/india/net-hesitancy-hiccups-for-rural-india-vax-drive/articleshow/82671780.cms"> Low smartphone reach coupled with lack of digital literacy hit rural India Covid vaccine drive While a shortage of vaccine supplies is blamed :</a>                    While a shortage of vaccine supplies is blamed for stretching the wait of Kesavan, low smartphone penetration and internet access, and lack of digital literacy are also blocking rural folks? reach to vaccines in the backward areas
                    of the country. ??Activists have highlighted the digital divide as an impediment to the vaccination drive in the rural areas if people have to book a slot online.
                </p>
            </div>
        </div>
        <div class="box4">
            <div class="content">
                <p>
                    <a href="https://gadgets.ndtv.com/internet/news/government-to-start-digital-village-programme-soon-says-prasad-1639539">Government to Start Digital Village Programme Soon, Says Prasad</a> Government will soon launch a new programme,
                    Digital Village, to provide services like health and education in villages with the help of technology. The programme would be rolled out in 100 villages initially and will be expanded later, Law and IT Minister Ravi Shankar Prasad
                    said Monday. "We are going to unleash another important initiative - Digital Village. As per my understanding, it will be a collector-driven initiative. We propose to begin with 100 villages and expand it later," Prasad said at the
                    Digital India Awards event in New Delhi.
                </p>
            </div>
        </div>
        <div class="box5">
            <div class="content">
                <p> <span style="text-align: center;background-color:transparent; font-weight:800; padding-bottom: 20px;">MAJOR RESOURCES</span>
                    <div class="image"><img src="images/news1.jpg"></div>
                    <ol>
                        <li> <a href=" http://www.pmkvyofficial.org/Index.aspx" style="background-color:transparent;">Pradhan Mantri Kaushal Vikas Yojana (PMKY)
                    </a>
                        </li>
                        <li>
                            <a href="http://ddugky.gov.in/c">Deen Dayal Upadhyaya Grameen Kaushalya Yojana
                        </a>
                        </li>
                        <li> <a href=" http://www.pmkvyofficial.org/Index.aspx" style="background-color:transparent;">Pradhan Mantri Kaushal Vikas Yojana (PMKY)
                        </a>
                        </li>
                        <li>
                            <a href="http://mkisan.gov.in/downloadmobileapps.aspx ">Agrimarket App
                            </a>
                        </li>
                        <li> <a href=" https://play.google.com/store/apps/details?id=in.gov.georurban.georurban" style="background-color:transparent;">GeoRurban
                            </a>
                        </li>
                        <li>
                            <a href="http://mkisan.gov.in/downloadmobileapps.aspx ">Agrimarket App
                                </a>
                        </li>
                        <div class="image"><img src="images/news1.jpg"></div>
                        <li>
                            <a href=" http://mkisan.gov.in/downloadmobileapps.aspx">Crop Insurance Mobile APP
                            </a>
                        </li>
                        <li>
                            <a href="https://nrega.nic.in/netnrega/mgnrega_new/Nrega_home.aspx"> Mahatma Gandhi National Rural Employment Gurantee Act</a>
                        </li>
                        <li> <a href=" http://www.pmkvyofficial.org/Index.aspx" style="background-color:transparent;">Pradhan Mantri Kaushal Vikas Yojana (PMKY)
                        </a>
                        </li>
                        <li>
                            <a href="http://ddugky.gov.in/c">Deen Dayal Upadhyaya Grameen Kaushalya Yojana
                            </a>
                        </li>
                        <li> <a href=" http://www.pmkvyofficial.org/Index.aspx" style="background-color:transparent;">Pradhan Mantri Kaushal Vikas Yojana (PMKY)
                            </a>
                        </li>
                    </ol>
                </p>
            </div>
        </div>
        <div class="box8">
            <div class="content">
                <p>
                    <a href="">Roshni: Skill Development Scheme for Tribals</a> I. The Ministry of Rural Development on 7 June 2013 launched a new skill development scheme designed to offer employment to tribal youth in 24 Naxal -affected districts. II.
                    The scheme, which is named Roshni is supposed to provide training and employment to an anticipated 50000 youth in the 10-35 years age group, for a period of three years. III. As per the Ministry 50 per cent of the beneficiaries of
                    the scheme will be women only. IV. The scheme is designed in light of the Himayat project model, which was launched in Jammu and Kashmir has been implemented in Sukma, Chhattisgarh, and West Singhbhum, Jharkand, on a pilot basis over
                    the last 18 months.
                </p>
            </div>
        </div>
        <div class="box6 ">
            <div class="content ">
                <p style="padding:15px;">
                    <div class="image"><img src="images/news1.jpg " style="width:60%; height: 250px; float: left;   margin: 15px;"></div>
                    <p><a href="https://aajeevika.gov.in/">National Rural Livelihood Mission:</a>I. This scheme was restructured from the Swarn Jayanti Gram Swarojgar Yojna in 2011. II. National Rural Livelihoods Mission (Aajeevika) is aimed to empower the
                        women?s self-help group model across the country. III. Under this scheme govt. provides loan up to 3 lakh rupee at the rate of 7% which could be lowered to 4% on the timely repayment.
                    </p>
                </p>
            </div>
        </div>
        <div class="box7 ">
            <div class="content ">
                <p>
                    <a href="">Govt plans Rs 15,000 cr investment for one lakh digital villages</a>: The government plans to set the ball rolling for setting up 100,000 digital villages as early as next month. A proposal for Rs 15,000 crore has been prepared
                    by CSC eGovernance Services India Ltd, which will be the nodal point for digital villages project. The main objective of digital villages (Digi Gaons) is to transform rural villages of India into smart villages through use of ICT applications,
                    besides promotion of a self-sustainable service model for people residing in these areas. Also, a digital village will offer a one-stop service solution for rural people, through Common Service Centers (CSCs) run a by a village level
                    entrepreneur, for services such as tele-education, telemedicine, financial services, internet connectivity and other G2C/B2C services which are easily accessible online at an affordable price. And not to mention, it will reduce the
                    digital divide and enable rural citizens to avail all services as available to urban people. According to the detailed project report prepared by CSC eGovernance, the whole project will involve over 10 central ministries to make a
                    digital village successful and connect it with the rest of India. Ministries of communications, electronics and IT, Jal Shakti, agriculture, health and others will be an important part of this project.
                </p>
            </div>
        </div>
    </div>


    <div class="footer">
        <div class="containerf">
            <div class="row">
                <div class="footer-col-1">
                    <img src="dv_logo.jpeg" width="100px" height="100px">
                    <div class="social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>

                    <p><span style=" background: #E6E6FA;"> &#169;</span>2021 DIGITAL VILLAGE</p>
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
