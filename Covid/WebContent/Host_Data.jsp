<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import = "java.sql.*" %>
 <%@include file = "header.jsp" %>
 <%@page import = "java.math.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

h3
{
 color:white;
}

.label
{color : white;}

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
<title>Host_Page</title>
</head>
<body>
<%
if (request.getParameter("submit") != null)
{
	
  try{
	  
	 BigInteger Host_Aadhar = new BigInteger(request.getParameter("Host_Aadhar"));
	 String Host_Name = request.getParameter("Host_Name");
	 String Host_Dob = request.getParameter("Host_Dob");
	 String Host_city = request.getParameter("Host_city");
	 String Host_State = request.getParameter("Host_State");
	 String Host_Landmark = request.getParameter("Host_Landmark");
	 BigInteger Host_Pincode = new BigInteger(request.getParameter("Host_Pincode"));
	 BigInteger Host_FlatNo = new BigInteger(request.getParameter("Host_FlatNo"));
	 BigInteger Host_PlotNo = new BigInteger(request.getParameter("Host_PlotNo"));
	 String Host_BuildingName = request.getParameter("Host_BuildingName");
	 String Host_StreetDetails = request.getParameter("Host_StreetDetails");
	 String Host_Healthstatus = request.getParameter("Host_Healthstatus");
	 String Host_EmailID = request.getParameter("Host_EmailID");
	 BigInteger Host_PhoneNumber = new BigInteger(request.getParameter("Host_PhoneNumber"));
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","Ruk@2200");
	 Statement st = cn.createStatement();
	 String sql = "insert into Host_Details(Host_Aadhar,Host_Name,Host_Dob,Host_City,Host_State,Host_Landmark,Host_Pincode,Host_FlatNo,Host_PlotNo,Host_BuildingName,Host_StreetDetails,Host_HealthStatus,Host_EmailID,Host_PhoneNumber)"
			      +"values ("+Host_Aadhar+",'"+Host_Name+"','"+Host_Dob+"','"+Host_city+"','"+Host_State+"','"+Host_Landmark+"',"+Host_Pincode+","+Host_FlatNo+","+Host_PlotNo+",'"+Host_BuildingName+"','"+Host_StreetDetails+"','"+Host_Healthstatus+"','"+Host_EmailID+"',"+Host_PhoneNumber+")";
	 
	 String sql1 = "select * from aadhar_Details where Aadhar_No = "+Host_Aadhar+"";
	 ResultSet rs = st.executeQuery(sql1);
	 if(!rs.next())
	 {
		 out.println("<html><head></head><body><center><br><br><h3>Please Enter correct Aadhar Number and submit again!!</h3></center></body></html>");  
	 }
	 else
	 {
	  int re = st.executeUpdate(sql);
	 
	  if (re > 0)
	   {
		 out.println("<html><head></head><body><center><br><br>s<h3>Details Saved Successfully</h3></center></body></html>"); 
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
 <h2> <center><label for="form" class = "label">HOST_REGISTRATION_FORM</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_Aadhar</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "number" class ="input" placeholder = "Host_Aadhar" name = "Host_Aadhar" required=""/>
   </div>
   <br>
  <div class = "group">&nbsp
        <label for="name" class = "label">Host_Name</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Host_Name" placeholder = "Host_Name" size = "20" required=""/><br><br>&nbsp
         <label for="name" class = "label">Host_Dob</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "date" class ="input" name = "Host_Dob" placeholder = "Host_Dob" size = "20" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_City</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        <input id = "user" type = "text" class ="input" name = "Host_city" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_State</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Host_State" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_Landmark</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Host_Landmark" placeholder = "Landmark" size = "30" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_Pincode</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "Host_Pincode" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_FlatNo</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "Host_FlatNo" placeholder = "Host_FlatNo" size = "20" required=""/><br><br> &nbsp
        <label for="name" class = "label">Host_PlotNo</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "Host_PlotNo" placeholder = "Host_PlotNo" size = "20" required=""/><br><br> &nbsp
         <label for="name" class = "label">Host_BuildingName</label>&nbsp 
        <input id = "user" type = "text" class ="input" name = "Host_BuildingName" placeholder = "Host_Building_Name" size = "20" required=""/>
   </div>
   <br>
    <div class = "group">&nbsp
        <label for="name" class = "label">Host_StreetDetails</label>&nbsp &nbsp &nbsp 
        <input id = "user" type = "text" class ="input" name = "Host_StreetDetails" placeholder = "Host_StreetDetails"  size = "30" required=""/>
   </div>
   <br>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_HealthStatus</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <select name = "Host_Healthstatus" style = "width:30%">
           <option value = "0">Select Status </option>
           <option value = "Well">Well</option>
           <option value = "Not_Well">Not_Well </option>
         </select>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_EmailID</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        <input id = "user" type = "email" class ="input" name = "Host_EmailID" size = "30" required=""/>
   </div><br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_PhoneNumber</label>
        <input id = "user" type = "number" class ="input" name = "Host_PhoneNumber" size = "30" required=""/>
   </div>
   <br><br>
  <center> <input type="submit" name ="submit" class = "loginbutton" value="SUBMIT" size = "20" /></center><br><br>
   </form>

   <br><br>
  </div>
  </div>
  </div>

</body>
</html>