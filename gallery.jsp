<%-- 
    Document   : gallery
    Created on : 6 Apr, 2021, 3:39:03 PM
    Author     : Sakshi Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Events Section</title>
    <style>

    @import url('https://fonts.googleapis.com/css2?family=Caveat:wght@600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Arimo&display=swap');
    body {
        margin: 0px;
        padding: 0px;
        font-family: 'Caveat', cursive;
        font-size: 30px;
        color: violet;
        background : url("images/san-fermin-pamplona-navarra-0D7Wtqhe-AQ-unsplash.jpg");
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
  

    section .left {
        width: 50%;
        float: left;
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
    <section>


        <div class="left">

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
