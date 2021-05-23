<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Complain File</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>


    <style>

    body{
      margin : 0 ;
      padding: 0 20px ;
      background-color: lavender;
      background-size: cover;
      font-family: sans-serif;
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

    form
    {
      width: 100%;

    }

    .title_1
    {
      font-size: 28px;
      font-weight: bold;
      margin-bottom: 30px;
      color: #fec107;
      text-transform: uppercase;
      text-align: center;

    }

    .title_2
    {
      font-size: 20px;
      padding-top: 20px;
      color: black;
      text-transform: uppercase;
      text-align: center;
    }

    section
    {
      margin:0px;
      padding:0px;

    }



    .input_field
    {
        margin-bottom: 18px;
        display: flex;
        align-items: center;

    }

    label
    {
      width: 200px;
      color: black;
      font-weight: bold;
      margin-right: 10px;
      font-size: 20px;
    }

    .input
    {
      width: 180px;
      outline : none;
      border:1px solid #d5dbd9;
      font-size: 15px;
      padding: 8px 10px;
      transition: all 0.3s ease;

    }

    select
    {
      width: 150px;
      border:1px solid #d5dbd9;
      height: 100%;
      padding: 8px 10px;
      outline: none;
    }

    .btn
    {
      display: block;
      width: 50%;
      color: white;
      font-weight: 600;
      border:none;
      background-color:#fec107;
      margin-top: 10px;
      padding: 15px;
      border-radius: 8px;
      font-size: 15px;
      justify-content: center;
    }
    .split_screen
    {
      display : flex;
      flex-direction: column;

    }

    .left, .right
    {
      display: flex;
      justify-content: center;
      align-items: center;
    }



    @media screen and (min-width:900px)
    {
        .split_screen
        {
          flex-direction: row;
          height: 100vh;
        }
        .left, .right
        {
          display: flex;
          height:auto;
        }
        .left
        {
          width: 60%;
        }
        .right
        {
          width: 40%;
        }
    }

    </style>
    
  </head>
  <body>
    <!-- Navigation Bar -->

  <section id="nav-bar">
      <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="images/dv_logo.png"></a>
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
                        <a class="nav-link" href="contact.jsp"><i class="fa fa-phone"></i>CONTACT</a>
                      </li>
                       <li class="nav-item">
                        <a class="nav-link" href="feed2.jsp"></i>Feedback</a>
                      </li>
                  </ul>
              </div>
          </div>
      </nav>
  </section>

<form method="post" action="complaint.jsp">
    <div class="split_screen">
      <div class="left">
        <form>
        <section class="complain_form">
          <div class="title_1">
            <h1>COMPLAINT FORUM</h1>
          </div>

          <h3>Fill Below</h3>

          <div class="input_field">
            <label>AADHAR NO.</label>
            <input type="text" name="no" class="input">
          </div>

          

            <div class="input_field">
              <label>COMPLAIN TYPE:</label>
              <div class="select">
                <select name="category">
                  <option value="">SELECT</option>
                  <option value="agriculture">agriculture</option>
                  <option value="animal husbandry">animal husbandry</option>
                  <option value="cleanliness and basic sanitation">cleanliness and basic sanitation</option>
                  <option value="education">education</option>
                  <option value="healthcare">healthcare</option>
                  <option value="land dispute">land dispute</option>
                </select>
              </div>
            </div>
<div class="input_field">
              <label>DATE </label>
              <input type="text" name="date" class="input">
            </div>
            <div class="input_field">
              <label>DESCRIPTION:</label>
              <textarea name="desc" class="input"></textarea>
            </div>

           <!---<input type="file" id="read-file" accept=".pdf" />--->

              <input type= "Submit" value= "Submit" name="submit" class="btn" >
              <h4>FILL DETAILS BELOW TO CHECK STATUS OF EARLIER COMPLAINTS</h4>
              <div class="input_field">
              <label>Enter your Complaint id</label>
              <textarea name="comp_id" class="input"></textarea>
            </div>
              <input type= "Submit" value= "CHECK" name="check" class="btn" >
              

        </section>
       </form>
      </div>
      <div class="right">
        <section class="display_feedback">


        <div class="title_2">
            <h1>FEEDBACKS CORRESPONDING TO SOLVED COMPLAINTS</h1>
        </div>


        <div class="display">
            <i class="fa fa-file" aria-hidden="true"></i> &nbsp;Feedbacks</h5>
        <div class="card-body">
        <div class="input-group" align="center">
           <ul class="list-unstyled mb-0">
              <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="3" style="height:400px;">

                  <li style="padding-top:2%"> <a href="success-story.php?did=76"><strong>#</strong>2360347 - <span style="color:#000"> When NCH spoke to the consumer, he confirmed that the issue had been resolved, and he had got the refund.</span>  </a></li><a href="success-story.php?did=76"></a>
                  <li style="padding-top:2%"><a href="success-story.php?did=76"> </a><a href="success-story.php?did=77"><strong>#</strong>2463090 - <span style="color:#000"> When NCH spoke to the consumer, he confirmed that after lodging  the grievance on portal he received ₹ 4100/- refund from the company, hence issue resolved.</span>  </a></li><a href="success-story.php?did=77"></a>
                  <li style="padding-top:2%"><a href="success-story.php?did=77"> </a><a href="success-story.php?did=75"><strong>#</strong>2419421 - <span style="color:#000"> Excellent! Very much delighted and obliged with the help of National Consumer Helpline.  Thanks for all your support to get this done</span>  </a></li><a href="success-story.php?did=75">
              </marquee>
          </ul>
         </div>
        </div>
       </div>
       </section>
      </div>
     </div>
</form>
  </body>
</html>
