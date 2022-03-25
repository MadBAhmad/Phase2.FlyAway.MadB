<%@page import="java.sql.*"%>
<%@ page import="model.Search" %>
<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost/db_world";
    String dbName = "db_world";
    String userId = "root";
    String password = "1234";
    String query = Search.getQuery();
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
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
  min-height: 500px;

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
  max-width: 1000px;
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
 <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
        Showing available flights from <%=Search.source%> to  <%=Search.destination%> <br>
        Date of travel : <%=Search.date%> (<%=Search.date%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
<table class="table table-hover table-striped">
        <thead>
        <tr>
            <th scope="col">Flight name</th>
            <th scope="col">Flight number</th>
            <th scope="col">Class</th>
            <th scope="col">Date of travel</th>
            <th scope="col">Source City</th>
            <th scope="col">Destination City</th>
            <th scope="col">Departure time</th>
            <th scope="col">Arrival time</th>
            <th scope="col">Seat available</th>
            <th scope="col">Ticket Price</th>
            <th scope="col">Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>

<!-- mysql try statement -->
   <%
            try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                while(resultSet.next()){
        %>

<!-- table design getValues -->
<tr bgcolor="#F5F5F5">
            <td><%=resultSet.getString("flight_name") %></td>
            <td><%=resultSet.getString("flight_number") %></td>
            <td><%=resultSet.getString("class") %></td>
            <td><%=resultSet.getString("date_of_travel") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=resultSet.getString("departure_time") %></td>
            <td><%=resultSet.getString("arival_time") %></td>
            <td><%=resultSet.getString("seat_availibility") %></td>
            <td><%=resultSet.getInt("ticket_price") %></td>
            <td>
<form action="${pageContext.request.contextPath}/booking-details.jsp" method="post">
                    <input type="hidden" id="flight_name" name="flight_name" value="<%=resultSet.getString("flight_name")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit" class="btn btn-success" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>

</div>
       <div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>

</body>
</html>


