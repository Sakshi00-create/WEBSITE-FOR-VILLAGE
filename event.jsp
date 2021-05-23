

<!DOCTYPE html>
<html>

<head>
    <title>Events Section</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Caveat:wght@600&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Arimo&display=swap');
        nav {
            background: rgba(0, 0, 0, 0.5);
            height: 80px;
            width: 100%;
            font-family: montserrat;
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
            padding: 0;
            margin: 0;
        }
        
        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px;
            list-style: none;
            text-decoration: none;
        }
        
        nav ul li a {
            color: white;
            font-size: 17px;
            padding: 7px 13px;
            border-radius: 3px;
            text-transform: uppercase;
            list-style: none;
            text-decoration: none;
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
            margin: 0px;
            padding: 0px;
            font-family: 'Caveat', cursive;
            font-size: 30px;
            color: indigo;
            background: url("images/WhatsApp Image 2021-04-29 at 12.02.38 PM.jpg");
            background-attachment: fixed;
            background-size: cover;
            background-repeat: no-repeat;
        }
        
        section {
            display: flex;
            /* without it also working */
            height: max-content;
            width: 100%;
            position: absolute;
        }
        /**/
        
        section .left {
            width: 50%;
            float: left;
            align-items: center;
            justify-content: center;
        }
        
        section .left img {
            margin: 5% auto;
            display: block;
            height: 800px;
            width: 90%;
        }
        
        section ul {
            background: rgba(0, 0, 0, 0.5);
            height: max-content;
            float: right;
            width: 50%;
            margin: 0px;
            padding: 20px 40px;
        }
        
        section ul li {
            background: coral;
            list-style: none;
            box-sizing: border-box;
            margin: 20px 0;
            padding: 0px;
            display: flex;
            text-align: center;
        }
        
        section ul li .details {
            background-color: blanchedalmond;
            width: 70%;
            padding: 25px;
            float: right;
        }
        
        section ul li .time {
            width: 30%;
            position: relative;
            padding: 0px;
            text-align: center;
            float: left;
            background: #0b025a;
            color: darkgrey;
        }
        
        section ul li .time h2 {
            position: relative;
            top: 0%;
            left: 5%;
            font-family: sans-serif;
            color: rgb(230, 237, 240);
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
        /*
section ul li .time {
position: relative;
padding: 20px;
transition: .5s;

float: left;
height: 100%;
width: 40%;
text-align: center;
}


section ul li:hover .time h2 span {
font-size: 30px;
}

section ul li .details {
padding: 20px;
background: #fff;
box-sizing: border-box;
color: black;
width: 60%;
float: right;
height: 100%;
text-align: center;
font-family: 'Arimo', sans-serif;
}

section ul li .details h3 {
position: relative;
margin: 0;
padding: 0;
font-size: 22px;
}

section ul li .details p {
position: relative;
margin: 10px 0 0;
padding: 0;
font-size: 16px;
}*/
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
            <li><a href="about.jsp">About Us</a></li>

            <li>
                <a class="active">Events</a>
            </li>
            <li><a href="gallery1.jsp">Gallery</a></li>
            <li><a href="products.jsp">Product & Trade</a></li>
            <li><a href="contact.jsp">Contact</a></li>

        </ul>
    </nav>
    <section>


        <div class="left">
            <img src="images/WhatsApp Image 2021-04-29 at 1.26.17 PM.jpeg">
        </div>


        <ul>
            <li>
                <div class="time">
                    <h2>10<br><span>June</span></h2>
                </div>
                <div class="details">

                    Panchayat is hosting inauguration of newly build hospital 'Uttam Upchaar' in its courtyard on the given date.


                </div>
                <div style="clear: both;"></div>
            </li>
            <li>
                <div class="time">
                    <h2>10<br><span>June</span></h2>
                </div>
                <div class="details">
                    Panchayat is hosting inauguration of newly build hospital 'Uttam Upchaar' in its courtyard on the given date.



                </div>
                <div style="clear: both;"></div>
            </li>
            <li>
                <div class="time">
                    <h2>10<br><span>June</span></h2>
                </div>
                <div class="details">

                    Panchayat is hosting inauguration of newly build hospital 'Uttam Upchaar' in its courtyard on the given date.

                </div>
                <div style="clear: both;"></div>
            </li>
            <li>
                <div class="time">
                    <h2>10<br><span>June</span></h2>
                </div>
                <div class="details">
                    Panchayat is hosting inauguration of newly build hospital 'Uttam Upchaar' in its courtyard on the given date.



                </div>
                <div style="clear: both;"></div>
            </li>
            <li>
                <div class="time">
                    <h2>10<br><span>June</span></h2>
                </div>
                <div class="details">

                    Panchayat is hosting inauguration of newly build hospital 'Uttam Upchaar' in its courtyard on the given date.



                </div>
                <div style="clear: both;"></div>
            </li>
        </ul>

    </section>
    

</body>

</html>