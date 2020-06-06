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

a
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
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","Ruk@2200");
Statement st = cn.createStatement();
%>
 <div class = "login-wrap"><br><br>
 <h2> <center><label for="form" class = "label">Function_Details</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Please Enter Patient_Aadhar </label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
      <br><input id = "user" type = "number" class ="input" placeholder = "Patient_Aadhar" name = "Patient_Aadhar"/>
   </div>
   </div>
   <br><br><br>
   <font size="4" face="Courier New" color = "white" >
   <table border = "2" color = "white" width = "20%">
    <tr><th>Function_Id</th>
        <th>Host_Aadhar</th>
     <th>Function_Name</th>
<th>Venue_Name</th>
<th>Event_StartDate</th>
<th>Event_EndDate</th>
<th>Venue_City</th>
<th>Venue_PlotNo</th>
<th>Venue_BuildingName</th>
<th>Venue_Pincode</th>
        </tr>
   <%
       
     if (request.getParameter("submit") != null)
     {	 
    	 
    	 BigInteger Patient_Aadhar = new BigInteger(request.getParameter("Patient_Aadhar"));
         String sql = "select Fun.Function_Id ,Fun.Host_Aadhar,Fun.Function_Name,Fun.Venue_Name ,Fun.Event_StartDate ,Fun.Event_EndDate,Fun.No_of_Guests ,Fun.Venue_State ,Fun.Venue_City ,Fun.Venue_FlatNo ,Fun.Venue_PlotNo ,Fun.Venue_BuildingName ,Fun.Venue_StreeDetails,Fun.Venue_Landmark ,Fun.Venue_Pincode ,Fun.Duration_of_event from Function_Details Fun,Guest_Details Gst "
  		   +"where Fun.Function_Id=Gst.Function_Id and Gst.Guest_Aadhar="+Patient_Aadhar+"";
         ResultSet rs = st.executeQuery(sql);
         
         if(rs.next())
         {
          String Function_Id = rs.getString("Function_Id");
   		  String Host_Aadhar = rs.getString("Host_Aadhar");
   		  String Function_Name = rs.getString("Function_Name");
   		  String Venue_Name = rs.getString("Venue_Name");
   		  String Event_StartDate = rs.getString("Event_StartDate");
   		  String Event_EndDate = rs.getString("Event_EndDate");
   		  String No_of_Guests = rs.getString("No_of_Guests");
   		  String Venue_State = rs.getString("Venue_State");
   		  String Venue_City = rs.getString("Venue_City");
   		  String Venue_FlatNo = rs.getString("Venue_FlatNo");
   		  String Venue_PlotNo = rs.getString("Venue_PlotNo");
   		  String Venue_BuildingName = rs.getString("Venue_BuildingName");
   		  String Venue_Landmark = rs.getString("Venue_Landmark");
   		  String Venue_Pincode = rs.getString("Venue_Pincode");
   		  String Duration_of_event = rs.getString("Duration_of_event");
   		 
   		 
       
	  %>
	 <br><br>
	 
    <tr><td><%=rs.getString("Function_Id") %></td>
        <td><%=rs.getString("Host_Aadhar") %></td>
        <td><%=rs.getString("Function_Name") %></td>
        <td><%=rs.getString("Venue_Name") %></td>
        <td><%=rs.getString("Event_StartDate") %></td>
        <td><%=rs.getString("Event_EndDate") %></td>
        <td><%=rs.getString("Venue_City") %></td>
        <td><%=rs.getString("Venue_PlotNo") %></td>
        <td><%=rs.getString("Venue_BuildingName") %></td>
        <td><%=rs.getString("Venue_Pincode") %></td>
    </tr>
    </table>
    
    </font>
	<% 
      }
       cn.close();
     }
     %>     
	 
    <br>
   
   <center> <input type="submit" name ="submit" class = "loginbutton" value="submit" size = "20" /></center><br><br>
   <div class = "group">&nbsp
        <label for="name" class = "label">For Function_detail please click here!! </label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
   </div>
   <a href="Function_Data.jsp">Host_Data</a>
      </form>
   <br><br>
  </div>
  </div>
</body>
</html>