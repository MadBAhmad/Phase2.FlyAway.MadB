<%@page import="loginSearch.Login"%>

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
  right: 100px;
  margin: 30px;
  max-width: 800px;
  padding: 8px;
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
  padding: 12px 16px;
  border: 2px solid black;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 2;
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
    <a class="index.jsp" href="index.jsp">Home</a>
    <a href="Search-Flight.jsp">Search Flight</a>
    <a href="login.jsp">Admin Login</a>
  </div>
</div>
<div class="bg-img">
  <form action="Change-Password" method="post" class="container">
    <h2 align="center">Admin Dashboard</h2>
    <p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
 
        <h1 align:"center">Password Change</h1>
            
             <%
            if (Login.isLoggedIn) {
            %>
                <form action="change-password" method="post">
                    <div>
                        <label class="sr-only">Email address : admin@fly.com</label>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Enter a new password">
                        <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
    </div>


<div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>
</div>











/html>