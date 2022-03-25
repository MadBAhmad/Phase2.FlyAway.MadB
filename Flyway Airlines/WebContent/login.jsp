<%@page import="loginSearch.Login"%>
<% Login.isLoggedIn = false; %>
<!DOCTYPE html>
<html>
<head>
<meta name="header" content="width=device-width, initial-scale=1">
<style>
{box-sizing: border-box;}

body { 
  margin: 28;
  font-family: Arial, Helvetica, sans-serif;
}
.bg-img {
  /* The image used */
  background-image: url(https://wallpaperaccess.com/full/254381.jpg);
   /* Control the height of the image */
  min-height: 600px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
  /* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 80%;
  padding: 18px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #FFA500;
  color: black;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
.header {
  overflow: hidden;
  background-color: #FFA500;
  padding: 10px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 14px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: Italics;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color:peach puff ;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
.footer
{
position: fixed;
left: 0;
bottom: 10px;
width: 100%;
background-color:#FFA500;
color: black;
text-align: center;

}
</style>
</head>
<body>

<div class="header">
  <a href="Header.jsp" class="logo">FlyAway Airline</a>
  <div class="header-right">
    <a class="hover" href="index.jsp">Home</a>
    <a href="Search-Flight.jsp">Search Flight</a>
    <a href="login.jsp">Admin Login</a>
  </div>
</div>
<div class="bg-img">
  <form action="login" method="post" class="container">
    <h1>Login</h1>

    <label for="inputEmail"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" class="form-control" name="emailEntered" id="inputEmail" required>

    <label for="inputPassword"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="passwordEntered" class="form-control" id="inputPassword" required>

    <button type="submit" class="btn btn-success btn-block" value="Submit" class="btn">Login</button>
  </form>
</div>
<div style="padding-left:20px">

</div>
<div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>
</body>
</html>