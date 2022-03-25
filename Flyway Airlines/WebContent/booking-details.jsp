<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  min-height: 900px;

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
  max-width: 500px;
  padding: 12px;
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
    <a href="#contact">Search Flight</a>
    <a href="login.jsp">Admin Login</a>
  </div>
</div>
<div class="bg-img">
  <form action="${pageContext.request.contextPath}/payment.jsp" method="post" class="container">
   <h1 align="center" style="color:black;"><b>Booking Details</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Passenger Details</strong></span></p><br>
    
  
                    <div class="form-group">
                        <label for="pname">Passenger Name</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
                    </div>
                    <div class="form-group">
                        <label for="pname">Address</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Home address">
                    </div>
                    <div class="form-group">
                        <label for="pname">Age</label><br>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Age">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="text" name="email" class="form-control" id="email"  placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label><br>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <div class="form-group">
                    <label for="source">Personal Id</label>
                    <select  class="form-control" id="source" name="source">
                        <option value="Aadhar card">Aadhar card</option>
                        <option value="SSN">SSN</option>
                        <option value="Passport">Passport</option>
                        <option value="Voter ID">Voter ID</option>
                        <option value="Driving license">Driving license</option>
                    </select><br><br>
                    <label for="enterno">Enter No</label><br>
                        <input type="text" class="form-control" id="enterno" name="enterno" placeholder="Enter No">
                  </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Payment</button>
                </form>
            </section>
        </section>
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
     <div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>