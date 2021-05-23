<html>
<head>
<title>Seller modify</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>


<style>

body{
margin: 0;
padding: 0;
background-image:url("images/pexels-amdad-hossain-6051686.jpg");
background-size: cover;
background-position: center;
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

input[type=text], input[type=number], textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical; /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

</style>

</head>

<body>

  <!-- Navigation Bar -->

<section id="nav-bar">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="dv_logo.png"></a>
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
                </ul>
            </div>
        </div>
    </nav>
</section>
  <form method="post" action="seller_mod.jsp">
<div class="container">
  <form >

   
    <label for="lname">Seller's Id</label>
    <input type="text" id="lname" name="sellerid" placeholder="correct id.">

    <label for="aadhar">Product's Id.</label>
    <input type="text" id="aadhar" name="productid" placeholder="Product id">

    <label for="subject">Modifying Details</label>
    <textarea id="text" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" name="submit" value="Submit">

  </form>
</div>
  </form>
</body>
</html>
