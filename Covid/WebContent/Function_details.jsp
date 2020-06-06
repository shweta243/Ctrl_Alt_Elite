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

 body
{
   background:url(covid_back2.jpg)no-repeat;
   opacity :.8;
   background-size: 2000px 1500px;
   position:relative;
}
input[type= text]{
 float: right;
 margin-right : 20px;
}
input[type= number]{
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
h3
{
 color:white;
}
</style>
<title>Function_Page</title>
</head>
<body>
<%
if (request.getParameter("submit") != null)
{
	
  try{
	  
	  BigInteger Host_Aadhar = new BigInteger(request.getParameter("Host_Aadhar"));
	 String Function_Name = request.getParameter("Function_Name");
	 String Venue_Name = request.getParameter("Venue_Name");
	 String Event_StartDate = request.getParameter("Event_StartDate");
	 String Event_EndDate = request.getParameter("Event_EndDate");
	 Integer No_of_Guests = Integer.parseInt(request.getParameter("No_of_Guests"));
	 String Venue_State = request.getParameter("Venue_State");
	 String Venue_City = request.getParameter("Venue_City");
	 String Venue_FlatNo = request.getParameter("Venue_FlatNo");
	 String Venue_PlotNo = request.getParameter("Venue_PlotNo");
	 String Venue_BuildingName = request.getParameter("Venue_BuildingName");
	 String Venue_StreeDetails = request.getParameter("Venue_StreeDetails");
	 String Venue_Landmark = request.getParameter("Venue_Landmark");
	 Integer Venue_Pincode = Integer.parseInt(request.getParameter("Venue_Pincode"));
	 Integer Duration_of_event = Integer.parseInt(request.getParameter("Duration_of_event"));
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","Ruk@2200");
	 Statement st = cn.createStatement();
	 String sql = "insert into Function_details(Host_Aadhar,Function_Name,Venue_Name,Event_StartDate,Event_EndDate,No_of_Guests,Venue_State, Venue_City, Venue_FlatNo,Venue_PlotNo,Venue_BuildingName,Venue_StreeDetails,"
			       +"Venue_Landmark,Venue_Pincode,Duration_of_event)"
			       + "values("+Host_Aadhar+",'"+Function_Name+"','"+Venue_Name+"','"+Event_StartDate+"','"+Event_EndDate+"',"+No_of_Guests+",'"+Venue_State+"','"+Venue_City+"','"+Venue_FlatNo+"','"+Venue_PlotNo+"','"+Venue_BuildingName+"','"+Venue_StreeDetails+"','"+Venue_Landmark+"',"+Venue_Pincode+","+Duration_of_event+")";
	 
	 String sql1 = "select * from Host_Details where Host_Aadhar = "+Host_Aadhar+"";
	 ResultSet rs = st.executeQuery(sql1);
	 if(!rs.next())
	 {
		 
		 out.println("<html><head></head><body><center><h3>Please Enter the correct Aadhar number!!</h3></center></body></html>");  
	 }
	 else
	 {
	 int re = st.executeUpdate(sql);
	 if (re > 0)
	 {
		 String sql3 = "select Function_Id from Function_details where Host_Aadhar = "+Host_Aadhar+" and Venue_PlotNo = '"+Venue_PlotNo+"'";
		 ResultSet rs1 = st.executeQuery(sql3);
		 if(rs1.next())
		 {
			 String Function_Id = rs1.getString("Function_Id");
			 out.println(Function_Id);
		 }
		 out.println("<html><head></head><body><center><h3>Details Saved Successfully</h3></center></body></html>"); 
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
 <h2> <center><label for="form" class = "label">FUNCTION_DETAIL_FORM</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
   <br>
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Host_Aadhar</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "number" class ="input" placeholder = "Host_Aadhar" name = "Host_Aadhar" required=""/>
   </div>
   <br>
  <div class = "group">&nbsp
        <label for="name" class = "label">Function_Name</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <select name = "Function_Name" style = "width:40%">
           <option value = "0">Select Function Name </option>
           <option value = "Marriage">Marriage</option>
           <option value = "Birthday">Birthday_Party </option>
           <option value = "Engagement">Engagement</option>
         </select>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_Name</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_Name" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Event_StartDate</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp s
        <input id = "user" type = "date" class ="input" name = "Event_StartDate" required=""/>
   </div>
    <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Event_EndDate</label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp s
        <input id = "user" type = "date" class ="input" name = "Event_EndDate" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">No_of_Guests</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "No_of_Guests" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_State</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_State" placeholder = "Venue_State" size = "30" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_City</label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_City" required=""/>
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_FlatNo</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_FlatNo" placeholder = "House_Number" size = "20" required=""/> &nbsp
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_PlotNo</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_PlotNo" placeholder = "Venue_PlotNo" size = "20" required=""/> &nbsp
   </div>
    <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_BuildingName</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_BuildingName" placeholder = "Venue_BuildingName" size = "20" required=""/> &nbsp
   </div>
    <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_StreeDetails</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_StreeDetails" placeholder = "Venue_StreeDetails" size = "20" required=""/> &nbsp
   </div>
    <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_Landmark</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "text" class ="input" name = "Venue_Landmark" placeholder = "Venue_Landmark" size = "20" required=""/> &nbsp
   </div>
   <div class = "group">&nbsp
        <label for="name" class = "label">Venue_Pincode</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "Venue_Pincode" placeholder = "Venue_Pincode" size = "20" required=""/> &nbsp
   </div>
   <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Duration_of_event</label>&nbsp &nbsp &nbsp  &nbsp &nbsp
        <input id = "user" type = "number" class ="input" name = "Duration_of_event" placeholder = "Duration_of_event" size = "20" required=""/><br><br> &nbsp
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