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
 <h2> <center><label for="form" class = "label">Guest_Details!!!</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Please Enter Patient_Aadhar </label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
      <br><input id = "user" type = "number" class ="input" placeholder = "Patient_Aadhar" name = "Patient_Aadhar"/>
   </div>
   <br><br>
   <font size="4" face="Courier New" color = "white" >
   <table border = "2" color = "white" width = "20%">
    <tr><th>Guest_Aadhar</th>
        <th>Guest_Name</th>
     <th>Guest_DOB</th>
<th>Guest_Plotno</th>
<th>Guest_Building_Name</th>
<th>Guest_pincode</th>
<th>Guest_Phone</th>
<th>Guest_Emailid</th>
        </tr>
   <%
       
     if (request.getParameter("submit") != null)
     {	 
    	 
    	 BigInteger Patient_Aadhar = new BigInteger(request.getParameter("Patient_Aadhar"));
    	 String sql1 = "select distinct Gst1.* from Guest_details Gst1 where Function_id in("
    			 +"select Gst.Function_Id from Guest_details Gst inner join Covid_Patient cov on Gst.Guest_Aadhar=cov.Patient_Aadhar "
    			 +"inner join Function_Details Fun on Fun.Function_Id=Gst.Function_Id where Fun.Event_StartDate >= (cov.Patient_covidDetectionDate -14) and Gst.Guest_Aadhar="+Patient_Aadhar+") and Gst1.Guest_Aadhar <> "+Patient_Aadhar+"";
        
         ResultSet rs1 = st.executeQuery(sql1);
         
         if(rs1.next())
         {
        	 String Guest_Aadhar = rs1.getString("Guest_Aadhar");
             String Guest_Name = rs1.getString("Guest_Name");
             String Guest_DOB = rs1.getString("Guest_DOB");
             String Guest_Plotno = rs1.getString("Guest_Plotno");
             String Guest_Building_Name = rs1.getString("Guest_Building_Name");
             String Guest_pincode = rs1.getString("Guest_pincode");
             String Guest_Phone = rs1.getString("Guest_Phone");
             String Guest_Emailid = rs1.getString("Guest_Emailid");
   		 
   		 
       
	  %>
	 <br><br>
	 
    <tr><td><%=rs1.getString("Guest_Aadhar") %></td>
        <td><%=rs1.getString("Guest_Name") %></td>
        <td><%=rs1.getString("Guest_DOB") %></td>
        <td><%=rs1.getString("Guest_Plotno") %></td>
        <td><%=rs1.getString("Guest_Building_Name") %></td>
        <td><%=rs1.getString("Guest_pincode") %></td>
        <td><%=rs1.getString("Guest_Phone") %></td>
        <td><%=rs1.getString("Guest_Emailid") %></td>
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
      </form>
   <br><br>
  </div>
  </div>
  </div>
</body>
</html>