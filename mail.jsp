

<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>

<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FORGOT PASSWORD</title>
	<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Montserrat', sans-serif;
	}
	body{
		background-image: url("images/pexels-jonathan-borba-6632603.jpg");
		
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

	.wrapper{
		max-width: 500px;
		width: 100%;
		margin: 20px auto;
		background: rgba(0,0,0,0.5);
		box-shadow: 1px 1px 2px rgba(0,0,0,0.125);
		color: #fff;
		top : 50%;
		left: 50%;
		position: absolute;
		transform: translate(-50% , -50%);
		box-sizing: border-box;
		padding: 70px 30px;
		border-radius: 10px;
	}

	.avatar{
		width: 100px ;
		height: 100px ;
		border-radius: 50%;
		position: absolute;
		top: -50px;
		left: calc(50% - 50px);
	}

	.wrapper .title{
		font-size: 28px;
		font-weight: 700;
		margin-bottom: 25px;
		color: #1c8adb;
		text-transform: uppercase;
		text-align: center;
	}

	.wrapper .form{
		width: 100%;
	}

	.wrapper .form .inputfield{
		margin-bottom: 15px;
		display: flex;
		align-items: center;
	}

	.wrapper .form .inputfield label{
		 width: 200px;
		 color: #fff;
		 margin-right: 10px;
		font-size: 16px;
	}

	.wrapper .form .inputfield .input,
	.wrapper .form .inputfield .textarea{
		width: 100%;
		outline: none;
		border: 1px solid #d5dbd9;
		font-size: 15px;
		padding: 8px 10px;
		border-radius: 5px;
		transition: all 0.3s ease;
	}

	.wrapper .form .inputfield .textarea{
		width: 100%;
		height: 75px;
		resize: none;
	}

	.wrapper .form .inputfield .custom_select{
		position: relative;
		width: 100%;
		height: 37px;
	}

	.wrapper .form .inputfield .custom_select:before{
		content: "";
		position: absolute;
		top: 12px;
		right: 10px;
		border: 8px solid;
		border-color: #d5dbd9 transparent transparent transparent;
		pointer-events: none;
	}

	.wrapper .form .inputfield .custom_select select{
		-webkit-appearance: none;
		-moz-appearance:   none;
		appearance:        none;
		outline: none;
		width: 100%;
		height: 100%;
		border: 0px;
		padding: 8px 10px;
		font-size: 15px;
		border: 1px solid #d5dbd9;
		border-radius: 3px;
	}


	.wrapper .form .inputfield .input:focus,
	.wrapper .form .inputfield .textarea:focus,
	.wrapper .form .inputfield .custom_select select:focus{
		border: 1px solid #fec107;
	}

	.wrapper .form .inputfield p{
		 font-size: 14px;
		 color: #fff;
	}
	.wrapper .form .inputfield .check{
		width: 15px;
		height: 15px;
		position: relative;
		display: block;
		cursor: pointer;
	}
	.wrapper .form .inputfield .check input[type="checkbox"]{
		position: absolute;
		top: 0;
		left: 0;
		opacity: 0;
	}
	.wrapper .form .inputfield .check .checkmark{
		width: 15px;
		height: 15px;
		border: 1px solid #1c8adb;
		display: block;
		position: relative;
	}
	.wrapper .form .inputfield .check .checkmark:before{
		content: "";
		position: absolute;
		top: 1px;
		left: 2px;
		width: 5px;
		height: 2px;
		border: 2px solid;
		border-color: transparent transparent #fff #fff;
		transform: rotate(-45deg);
		display: none;
	}
	.wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark{
		background: #1c8adb;
	}

	.wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark:before{
		display: block;
	}

	.wrapper .form .inputfield .btn{
		width: 100%;
		padding: 10px 10px;
		font-size: 15px;
		border: 0px;
		background:  #1c8adb;
		color: #fff;
		cursor: pointer;
		border-radius: 3px;
		outline: none;
		margin-top: 8px;
	}

	.wrapper .form .inputfield .btn:hover{
		background: skyblue;
	}

	.wrapper .form .inputfield:last-child{
		margin-bottom: 0;
	}

	@media (max-width:420px) {
		.wrapper .form .inputfield{
			flex-direction: column;
			align-items: flex-start;
		}
		.wrapper .form .inputfield label{
			margin-bottom: 5px;
		}
		.wrapper .form .inputfield.terms{
			flex-direction: row;
		}
	}

	  /--Footer --/

	    .footer
	    {
	    background:#fff;
	    box-sizing:border-box;
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
                        <a class="nav-link" href="aboutus.jsp"><i class="fa fa-user"></i>ABOUT US</a>
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
                      <li class="nav-item">
                        <a class="nav-link" href="news.jsp"><i class="fa fa-phone"></i>NEWS</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="view_modify1.jsp">ADMIN'S PAGE</a>
                      </li>      </ul>
              </div>
          </div>
      </nav>
  </section>


<form method="post" action="send1.jsp">
<div class="wrapper">
    <img src="images/pexels-amdad-hossain-6051686.jpg" class="avatar">
    <div class="title">
      FORGOT PASSWORD
    </div>
    <div class="form">
       <div class="inputfield">
          <label>WHAT'S YOUR FAVOURITE COLOR</label>
          <input type="text" name="color" class="input" placeholder="Enter correct color">
       </div>
        
      <div class="inputfield">
        <input type="submit" value="SUBMIT" name="submit" class="btn" >
      </div>
    </div>
</div>
</form>


          <!--footer--->
                            
</body>
</html>