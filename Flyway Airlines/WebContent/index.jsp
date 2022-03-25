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
<body style = "background: url(https://wallpaperaccess.com/full/254381.jpg);
			   background-size:100%;
			   background-repeat:no-repeat;">

<div class="header">
  <a href="Header.jsp" class="logo">FlyAway Airline</a>
  <div class="header-right">
    <a class="hover" href="#home">Home</a>
    <a href="Search-Flight.jsp">Search Flight</a>
    <a href="login.jsp">Admin Login</a>
  </div>
</div>
<div style="padding-left:20px">

</div>
<div class="footer" align="center">
    <b>FlyAway</b> @ project by <b>Basit Ahmad</b></div>
</body>
</html>