<%@page import="java.sql.*"%>
<%@page import="loginSearch.Login"%>

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "db_world";
String userId = "root";
String password = "1234";
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
  max-width: 1000px;
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
  width: 50%;
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
<%
    if (Login.isLoggedIn) {
%>
<div class="bg-img">
  <form action="#exjsp" class="container">
    <h2 align="center">Admin Dashboard</h2>
    <p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>


<div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/Change-Password.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Change Password</button>
            </form>&ensp;
            </div><br>
            
              <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/Search-Flight.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Search Flights</button>
            </form>&ensp;
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
            </form>
</div>

</div>
</div>
<section class="container-fluid">
    <section class="row justify-content-center">
       
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">Flight ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Source</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Day</th>
                    <th scope="col">Ticket Price</th>
                </tr>
                </thead>
                <tbody>
                <p style="text-align:center;"></p>
                 
 
                <p align="center"><span><strong> Flight Details </a></strong></span></p>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flight";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <thead>
                <tr>
                    <td><%=resultSet.getString("flight_number") %></td>
                    <td><%=resultSet.getString("flight_name") %></td>
                    <td><%=resultSet.getString("source") %></td>
                    <td><%=resultSet.getString("destination") %></td>
                    <td><%=resultSet.getString("date_of_travel") %></td>
                    <td><%=resultSet.getString("ticket_price") %></td>
                </tr>
                </thead>
                <tbody>
                <p style="text-align:center;">
                <p align="center"><span><strong> Flight Details </a></strong></span></p>
                <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table>
        </section>
    </section>
</section>




<div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>
</div>
   