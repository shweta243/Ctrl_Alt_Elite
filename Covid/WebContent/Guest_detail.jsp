 <%@include file = "header.jsp" %>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
 <%@page import = "java.sql.*" %>
  <%@page import = "java.math.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Text</title>
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
h3
{
 color:white;
}
input[type= email]{
 float: right;
  margin-right : 20px;
}
</style>
    </head>
    <body>
        <%
        if(request.getParameter("submit")!= null)
        {
            try
        {
            String fileName = "/Users/ssaini34/Covid/WebContent/guest.txt";
            String txtFilePath =fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
            	String[] sArray = line.split(",");
            	Integer Function_Id = Integer.parseInt(sArray[0]);
            	System.out.println(Function_Id);
            	BigInteger Guest_Aadhar = new BigInteger(sArray[1]);
            	System.out.println(Guest_Aadhar);
            	String Guest_Name = sArray[2];
            	System.out.println(Guest_Name);
            	String Guest_DOB = sArray[3];
            	System.out.println(Guest_DOB);
            	BigInteger Host_Aadhar = new BigInteger(sArray[4]);
            	System.out.println(Host_Aadhar);
            	String Guest_FlatNo = sArray[5];
            	System.out.println(Guest_FlatNo);
            	String Guest_Plotno = sArray[6];
            	System.out.println(Guest_Plotno);
            	String Guest_Building_Name = sArray[7];
            	System.out.println(Guest_Building_Name);
            	String Guest_Street_Details = sArray[8];
            	System.out.println(Guest_Street_Details);
            	Integer Guest_pincode = Integer.parseInt(sArray[9]);
            	System.out.println(Guest_pincode);
            	String Guest_City = sArray[10];
            	System.out.println(Guest_City);
            	String Guest_state = sArray[11];
            	System.out.println(Guest_state);
            	BigInteger Guest_Phone = new BigInteger(sArray[12]);
       
            	System.out.println(Guest_Phone);
            	String Guest_Emailid = sArray[13];
            	System.out.println(Guest_Emailid);
            	
             Class.forName("com.mysql.jdbc.Driver");
           	 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","Ruk@2200");
           	 Statement st = cn.createStatement();
           	 String sql = "insert into Guest_details(Function_Id,Guest_Aadhar,Guest_Name,Guest_DOB,Host_Aadhar,Guest_FlatNo,Guest_Plotno, Guest_Building_Name, Guest_Street_Details,Guest_pincode,Guest_City,guest_state,Guest_Phone,Guest_Emailid)"
           			       + "values("+Function_Id+","+Guest_Aadhar+",'"+Guest_Name+"','"+Guest_DOB+"',"+Host_Aadhar+","+Guest_FlatNo+",'"+Guest_Plotno+"','"+Guest_Building_Name+"','"+Guest_Street_Details+"',"+Guest_pincode+",'"+Guest_City+"','"+Guest_state+"',"+Guest_Phone+",'"+Guest_Emailid+"')";
             
           	 int re = st.executeUpdate(sql);
        	 
       	    if (re > 0)
       	   {
       		 out.println("<html><head></head><body><center><h3>Data Saved Successfully</h3></center></body></html>"); 
       	   } 
            }	}
       	 catch(Exception e)
     	{
     	 System.out.println("Exception "+e);
     	 e.printStackTrace();
     	 return;
     	}
        }     
        %>

     <div class = "login-wrap"><br><br>
 <h2> <center><label for="form" class = "label">Guest_Details_Form</label></center></h2>
  <div class = "login-html">
  <div class = "login-form">
  <form class = "form">
  <br>
   <div class = "group">&nbsp
        <label for="name" class = "label">Please upload your text file below!! </label>&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
      <br><input id = "user" type = "file" class ="input"  name = "guest_file" required=""/>
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