<%@ page import="model.Search" %>
<%@ page import="model.Booking" %>
<%
    Booking.name_on_card = request.getParameter("name_on_card");
    Booking.card_details = request.getParameter("card_details");

    if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
        out.println("Please enter valid card details");
    }
%>

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
  max-width: 900px;
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
    <a href="#contact">Search Flight</a>
    <a href="login.jsp">Admin Login</a>
  </div>
</div>
<div class="bg-img">

<div class="container">
    <a href="${pageContext.request.contextPath}/index.jsp" class="w3-bar-item w3-button w3-wide"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <div class="conainer">
        <a href="${pageContext.request.contextPath}/login.jsp" class="w3-bar-item w3-button"><i class="fa fa-gear"></i> Admin Login</a>
    </div>
</div>
    <div class="container">
        <h2 align="center"><span><strong>Thank You</strong></span></h2>
       
        <p align="center"><span><strong>Your ticket has been booked. The summary/details are as follows</strong></span></p>
        <p><button onclick="window.print()" class="btn btn-success btn-block" >Print Ticket</button></p>
        <br>
        
        <h3>Ticket Summary</h3>
        <h4><strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%></strong></h4>
        <p align="left"><%=Booking.flight_booking_id%> - <%=Booking.flight_name%> (Travellers <%=Search.persons%>)</p><br>
        <br>
        
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=Booking.passenger_name%> | Email- <%=Booking.passenger_email%> | Phone- <%=Booking.passenger_phone%></h3>
        <br>
        
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs.<%=Search.persons*Booking.ticket_price%></strong></h2><br><br>
    
    </div>
    </div>
       <div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>
</body>
</html>
