<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <link rel="stylesheet" type="text/css"  href="login.css" />
 <style>
#wrapper{
font-family:tahoma;
}

#footersi{
    height:300px;
    width:100%;
    color:#ffffff;
 background:#0a930a; 
   /* background-color:#8080ff; */
   
    position:absolute;
    top:700px;
    
}



.container{
width:90%;
margin:0 auto;
}
#subheader{
width:100%;
height:40px;
background:#0a930a;
color:#fff;
margin-top:-15px;
}


#subheader p{
float:left;
margin-top:10px;
}

#subheader a{  	
margin-top:7px;
float : right;
line-height:30px;
color:#fff;
text-decoration:none;
margin-left :30px;

}


#main-header
{
width:100%;
height:100px;
background:#1aaa1a;
float:left;
margin-top:-12px;
}

#logo{
width:250px;
margin-top:10px;
float:left;
}

#ist{
color:black;
font-size:35px;
font-weight:bold;
margin-left:15px;
font-family:cursive;
}
#ist1{
color:black;
font-size:25px;
font-weight:bold;
font-family:cursive;
}


/* search 
 */
 #search{
 width:650px;
 float:left;
 padding:20px;
 margin-left:50px;
 
 }
 .search-area{
 width:550px;
 height:50px;
 background:#fff;
 border:none;
 border-radius:10px;
 float:left;
 padding-left:15px;
 }
 
 .search-btn{
 width:100px;
 height:50px;
 border-radius:10px;
 border:none;
 color:#fff;
 background:brown;
 margin-left:-100px;
 }
 
 #user-menu{
 width:300px;
 float:right;
 margin-top:20px;
 }
 
 #user-menu li{
 float:left;
 width:140px;
 text-align:center;
 list-style:none;
 font-size:25px;
 border-left:1px solid black;
 }
 
 #user-menu li:hover{
 font-size:30px;
 transition:all .5s ease;
 }
 
 #user-menu li a{
 color:white;
 text-decoration:none;
 }
 
 
 #navigation{
 
 width:100%;
 height:35px;
 background:#1aaa1a;
 float:left;
 box-shadow:10px 14px 50px 2px #1aaa1a;
 }
 nav{
 width:1280px;
 margin: 0auto;
 
 }
 
 nav a
 {
 margin-left:100px;
 color:white;
 text-decoration:none;
 }
 
 nav a:hover{
 color:#000;
 transition :all .7s ease;
 }
 
 
 body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: url(a.png) no-repeat;
	background-size: cover;
}
 
 
 
</style>
<title>Home</title>
</head>
<body background="blured-bg.jpg">
<br>
<div id="wrapper" >
<div id="header">
<div id="subheader" >

<div class="container" >
<p>
fastest online shopping place for Engineering students 
</p>


<a href="#" > Guest</a>

<a href="#" > Consumer</a>

<a href="#" > Contact Us</a>

<a href="#" > Help</a>


</div></div>
</div>
</div>

<!-- Main Header  -->

<div id="main-header">
<div id="logo">
<span id="ist">
Rental 
</span><span id="ist1">solution
</span>
</div>

<div id="search">
<form action="#">
<input type="text"   class="search-area" name="text" placeholder="Search here">
<input type="submit" class="search-btn" name="srch" value="SEARCH">

</form>

</div>



<div id="user-menu">
<li>
<a href="Shoping_home.html">
Home</a>
</li>
<li>
<a href="signUp.html">
Sign Up</a>
</li>

</div>



<div id="navigation" >
<nav >

<a href="#" > Civil</a>
<a href="#" > Mechanical</a>
<a href="#" > Computer Science</a>
<a href="#" > Electronics & Communication</a>
<a href="#" > First Year Material</a>

</nav>

</div>


</div>

<br>
<br>
<br>



	
	





<%

String name="";
String name1="";
name=request.getParameter("name");
name1=request.getParameter("name1");
String add1=request.getParameter("hno");
String add2=request.getParameter("address");
String add3=request.getParameter("test[]");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String pass=request.getParameter("pass");

name=name+" "+name1;
add1=add1+" "+add2+" "+add3;
int i=1;





try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","root");

	PreparedStatement stmt =conn.prepareStatement("INSERT INTO kiranastore values(?,?,?,?,?,?)");

	stmt.setString(1,name);
	stmt.setString(2,mobile);
	stmt.setString(3,email);
	stmt.setString(4,add1);
	stmt.setString(5,pass);
	stmt.setString(6,email);
	
	i=1;
	
	stmt.executeUpdate();
	
	System.out.println("Successfully Connected ");
	
	
	conn.close();
}
catch(Exception e)
{
	i=0;
	System.out.println(" Data Not insertted");
}








%>
<div class="loginbox">
<p>
<font color="Lightblue">

<%
if(i==1)
{
	
	out.println(" <h1> Hello  "+name+"    Welcome   </h1>  ");
	%>
<a href="login.jsp">
   <button class="btn">Login</button>
</a><%
}else
{	
	out.println("<h1> User Already Registered </h1>	");

	%>
<a href="signUp.html">
   <button class="btn">Sign Up</button>
</a><%

	
}

%>
</font>
</p>
</div>
         <div id="footersi">
          <h3>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
              Support Link:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp; &nbsp;&nbsp;
              Quick Link:
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Help:
          </h3>
                    <li> &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="t&c.html" class="" > TERMS & CONDITIONS </a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="about.html">About Us</a>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;   &nbsp;&nbsp;
    &nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="cus-login.html">Customer data</a></li>
 <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="contact.html" class="" >Reach Us</a> </li>
 <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="cus-login.html" class="" >Customer Logo</a> </li>


<br>
           <h2>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;Appreciation Always Motivates us To Make More
            </h2>  
      <h3>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;Follow Us On :
      </h3>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.facebook.com/Finance-System-2070926326476185/?notif_id=1523548486803381&notif_t=page_invite&ref=notifs"
                >
                <img src="fb.png" width="35" height="35"/>
        </a> <a href="https://www.facebook.com/Finance-System-2070926326476185/?notif_id=1523548486803381&notif_t=page_invite&ref=notif"
                >
                <img src="ins.jpg" width="35" height="35"/>
        </a> <a href="https://www.facebook.com/Finance-System-2070926326476185/?notif_id=1523548486803381&notif_t=page_invite&ref=notif"
                >
                <img src="tw.jpg" width="35" height="35"/>
            </a>
      
 
          
          
      </div>











</body>
</html>