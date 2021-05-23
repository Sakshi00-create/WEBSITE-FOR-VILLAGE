<%-- 
    Document   : gallery2
    Created on : 6 Apr, 2021, 5:15:26 PM
    Author     : Sakshi Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <!-- <title>Responsive Navbar | CodingNepal</title> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
            background: url(Picture1.jpg) no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-color: navajowhite;
        }
        
        .img {
            overflow-x: hidden;
            display: flex;
            flex-wrap: wrap;
            padding: 0px 20px;
            height: 100vh;
        }
        
        .container {
            border-radius: 5px;
            border-style: ridge;
            border-width: 10px 0px 20px 20px;
            border-color: rgb(109, 47, 180);
            box-sizing: border-box;
            border-radius: 25px;
            height: 350px;
            margin: 5px;
            width: 350px;
        }
        
        img {
            height: 100%;
            width: 100%;
            max-height: 400px;
            max-width: 500px;
            border-width: 0px;
            border-top-right-radius: 25px;
            border-style: ridge;
            border-width: 0px;
        }
        
        img:hover {
            transition: all 5s ease-in-out;
            transform: scale(1.5);
            position: fixed;
            top: 20vh;
            left: 40%;
        }
        
        img:active {
            transform: unset;
            cursor: unset;
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
            <li><a href="#">Home</a></li>
            <li><a href="#">Events</a></li>
            <li>
                <a class="active">Gallery</a>
            </li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>

        </ul>
    </nav>
    <div class="img">
        <div class="container"> <img src="images/pexels-jonathan-borba-6622955.jpg"></div>
        <div class="container"><img src="images/pexels-orest-sv-1821712.jpg"></div>
        <div class="container"><img src="images/pexels-julia-volk-5270671.jpg"></div>
        <div class="container"><img src="images/pexels-plato-terentev-5910353.jpg"></div>
        <div class="container"><img src="images/pexels-nav-photography-5459139.jpg"></div>
        <div class="container"><img src="images/pexels-plato-terentev-5909696.jpg"></div>
        <div class="container"><img src="images/pexels-deep-kumar-4253606.jpg"></div>

        <div class="container"><img src="images/pexels-omkar-pandhare-3732475.jpg "></div>

    </div>

</body>

</html>
