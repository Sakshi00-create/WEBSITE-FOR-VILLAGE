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
	<title>LOGIN</title>
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

	</style>
</head>
<body>
        <form method="post" action="adm.jsp">
<div class="wrapper">
    <img src="images/pexels-amdad-hossain-6051686.jpg" class="avatar">
    <div class="title">
     ADMIN LOGIN
    </div>
    <div class="form">
       <div class="inputfield">
          <label>USERNAME</label>
          <input type="text" name="mail" class="input" placeholder="Enter username">
       </div>
        <div class="inputfield">
          <label>PASSWORD</label>
          <input type="text" name="pass" class="input" placeholder="Enter password">
       </div>
        
      <div class="inputfield">
        <input type="submit" value="SUBMIT" name="submit" class="btn" >
      </div>
         
    </div>
</div>
</form>
</body>
</html>

