<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page import = "java.sql.*" %>
 <%@include file = "header.jsp" %>
  <%@page import = "java.math.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.login-wrap{
  width : 70%;
  margin : auto;
  max-width : 600px;
  height : 200%;
  position : absolute;
  box-shadow : 0 12px 15px rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}

.login-html{
   width:70%;
   height:200%;
   position:absolute;
   padding:10px 15px 15px 15px;
   background: rgba(0,0,15,.9s);
   display:inline-block;
   border-bottom:2px solid transparent;
}
.label{
color = white;
}

.login-form{
  border:none;
  padding : 10px 15px;
  border-radius:25px;
  
}
input [type = text]{
    padding: 12px 20px;
    margin : 8px;
    display: inline-block;
    border : 2px solid black;
    border-radius:4px;
    box-sizing : border-box;
    float: right;
    
}

input [type = submit]{
   width:60%;
   background-color:darkblue;
   color:white;
   padding:14px 20px;
   margin : 8px;
   border-radius : 4px;
   cursor:pointer;
}

input[type=submit]:hover{
  background-color : lightseagreen;
}

.form{
    background-color = white;
    border: 2px solid white;
    width:120%;
    border-radius:6px
}
h2
{color: white;}

.label
{color : white;}

h3
{
 color:white;
}
 body
{
   background:url(covid_back2.jpg)no-repeat;
   opacity :.8;
   background-size:cover;
   position:relative;
}

input[type= number]{
 float: right;
 margin-right : 20px;
}

input[type= text]{
 float: right;
 margin-right : 20px;
}
input[type= date]{
 float: right;
 margin-right : 20px;
}
input[type= email]{
 float: right;
  margin-right : 20px;
}
</style>
</head>
<body>
<%
if (request.getParameter("submit") != null)
{
	
  try{
	  Integer Function_Id = Integer.parseInt(request.getParameter("Function_Id"));
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","Ruk@2200");
	  Statement st = cn.createStatement();
	  
	  String sql1 = "select Host_Aadhar from Guest_Details where Function_Id = "+Function_Id+" and Host_Aadhar in (select Patient_Aadhar from Covid_Patient where Patient_currentHealth ='Active')";
	  String sql2 = "select Guest_Aadhar from Guest_Details where Function_Id = "+Function_Id+" and Guest_Aadhar in (select Patient_Aadhar from Covid_Patient where Patient_currentHealth ='Active')";
	  String sql3 = "select Venue_PlotNo from Function_Details where Function_Id = "+Function_Id+" and Venue_PlotNo in (select Plot_No from Containment_Zone)";
	  ResultSet rs = st.executeQuery(sql1);
	  if (rs.next())
	  {
		  System.out.println(rs.getString("Host_Aadhar"));
		  out.println("<html><head></head><body><center><h3>Not Approved!!Host is covid +ve!!</h3></center></body></html>");  
	  }
	  else
	 {
		  ResultSet rs1 = st.executeQuery(sql2);
		  if (rs1.next())
		  {
			  out.println("<html><head></head><body><center><br><br><h3>Not Approved!!One of your guest is covid +ve</h3></center></body></html>");  
		  }
		  else
		  {
			  ResultSet rs2 = st.executeQuery(sql3);  
			  if(rs2.next())
			  {
				 out.println("<html><head></head><body><center>>br><br><h3> Not Approved!!Venue is in containment zone</h3></center></body></html>");  
			  }
			  else
			  {
				  out.println("<html><head></head><body><center><br><br><h3> Approved!!</h3></center></body></html>");  
			  }
		  }
		  
	 }	
	  

	  
  
  }
  catch(Exception e)
  {
    System.out.println("Exception "+e);
	 e.printStackTrace();
	 return;
  }
}
%>
<div class = "login-wrap"><br><br>
 <h2> <center><label for="form" class = "label">Approval_Page</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Please Enter FunctionId </label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
      <br><input id = "user" type = "number" class ="input" placeholder = "Function_Id" name = "Function_Id" required=""/>
   </div>
   <br>
   <center> <input type="submit" name ="submit" class = "loginbutton" value="SUBMIT" size = "20" /></center><br><br>
   </form>

   <br><br>
  </div>
  </div>
  </div>
</body>
</html>