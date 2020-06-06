<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu_page</title>
<style>
body
{
background-size:cover;
font-family:Arial;
position:relative;
}

ul
{
list-style-type:none;
margin:0;
padding:0px;
}
ul li
{
float:left;
width:270px;
height:30px;
background-color:white;
opacity:.8;
text-align:center;
line-height:40px;
font-size:20px;
}
ul li ul li{
 display:none;
 opacity:1;
}

ul li:hover ul li
{
display:block;
}
a
{
text-decoration:none;}
</style>
</head>
<body>
<ul>
<li><a href="Host_Data.jsp">Host_Data</a></li>
<li><a href ="Function_details.jsp">Function_Detail</a></li>
<li><a href = "Guest_detail.jsp">Guest_Detail</a></li>
<li><a href ="Approval.jsp">Approval_Form</a></li>
<li><a href ="Govt.jsp">Details_Display</a></li>
</ul>
</body>
</html>