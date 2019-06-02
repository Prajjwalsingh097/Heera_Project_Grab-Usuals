<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"  href="slider.css" />
 <meta charset="ISO-8859-1">
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
    top:1800px;
    
}

 #navigation-footer{
 
 width:100%;
 height:35px;
     color:#ffffff;
 background:#0a930a; 
  float:left;
 }

nav{
 width:1280px;
 margin: 0auto;
 
 }
 
#post h2{
color:orange;
left:200px;
font-family:Lucida Monaco;

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
height:80px;
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
 
 	
	ul{
	margin:0px;
	padding:0px;
	list-style:none;
	color:black;
    background:#0a930a;
  
	}
	
	ul li{
	top:150px;

	float:left;
	width:245px;
	height:40px;
    color:white;
    background:#0a930a;
   line-height:40px;
	text-align:center;
	font-size:20px;
	}
	
	ul li a{
	text-decoration:none;
	color:white;
	display:block;
	
	}
	ul li a:hover{
    background-color:green;
	}
	ul li ul li{
	text-align:left;
	display:none;
	}
	ul li:hover ul li{
	display:block;
	}
 
 
 body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: url(a.png) no-repeat;
	background-size: cover;
}

 
  #container #slider1{
                position:relative;
                width:4000px;
                top:100px;
             
                animation-name:slider;
                animation-duration:20s;
                
                
            } 
      #container #slider1 img
            {
              float:left; 
             
                

				}

@keyframes slider{


0%
{
left:0px;
}

20%
{
left:0px;
}

25%
{
left:-1000px;
}

45%
{
left:-1000px;
}

50%
{
left:-2000px;
}

70%
{
left:-2000px;
}
 
75%
{
left:-3000px;
} 

95%
{
left:-3000px;
}

100%
{
left:-4000px;
}
                

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
<%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
				
				String uid1= (String)session.getAttribute("user1");
		
		System.out.println("name :"+uid);
		System.out.println("name :"+uid1);
		
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="login.jsp"/>
		<%	
				}
				else
				{//IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
					%><a>
					<!-- WE HAVE GIVEN LOGOUT.JSP FILE INORDER TO LOGOUT THE SESSION -->
				<%	out.println(" "+uid+"</li>");
				
			//	}
		%>
		</a>
		
		<%
		}
		%>


</h1>

<li>
<a href="login.jsp">
LogOut</a>
</li>

</div>
</div>


<div id="menu">

<ul>
<li>
<a href="shopnow.jsp">
HOME
</a>
</li>
<li>
<a>
ABOUT
</a>
</li>
<li>
<a>
SERVICES
</a>

<ul>
<li>

<a href="rental.jsp" > > RENTAL</a>
</li>
<li>
<a href="UsedProd.jsp" > > USED PRODUCTS</a>
</li>
<li><a href="books.jsp" > > STUDY MATERIAL</a>
</li>
</li>
<li><a href="postaid.jsp" > > POST AID</a>
</li>

</ul>
</li>

<li>
<a>
PRODUCTS
</a>



<ul>
<li>

<a href="books.jsp" > > EQUIPMENTS</a>
</li>
<li>
<a href="books.jsp" > > BOOKS</a>
</li>
<li>
<a href="rental.jsp" > > RENTAL ROOMS</a>

</li>
<li><a href="bikes.jsp" > > BIKES</a>
</li>
<li><a href="laptop.jsp" > > LAPTOPS</a>
</li>

</ul>
</li>


<li>
<a>
CONTACT
</a>
</li>
<li>
<a>
HELP
</a>
</li>



</ul>




<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<p  style="color:crimson;" style-"font-family:Cooper Black;"    >

<hr>
 
<p  style="color:crimson;" style-"font-family:Cooper Black;"    >
 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <font  size="6" >
   <i> Second Hand/Rental Products
 </i></font>
 <%
 try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","root");
	//FRAME WORK
	
	String a="select * from posting";
     
	
	Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a);
    while(rs.next())
    {
    	%>
    	
    	
    	
    	<%
    	String pid=rs.getString(1);
    	String name=rs.getString(2);
    	String dsc=rs.getString(3);
    	String price=rs.getString(4);
    	String mob=rs.getString(5);
    	String atype=rs.getString(6);
    	String ptype=rs.getString(7);
    	String email=rs.getString(8);
    	dsc=dsc.trim();
    	
    String img_name=pid+mob;
    img_name=img_name.trim();
    	atype=atype.trim();
    	if(true)
    	{
    	
    	%>
    	<%
    	Blob b=rs.getBlob(9);
    	
    	byte barr[]=b.getBytes(1,(int)b.length());
    	img_name=img_name+".jpg";
    	System.out.println(img_name);
    	
    	FileOutputStream fout= new FileOutputStream("c:\\eclipse\\LaxmiKirana'\\WebContent\\"+img_name);
    	fout.write(barr);
    	System.out.println("Photo Inserted");
    	
    	
    	fout.close();
    	//out.println()
    	
    	%>
    	<table align="center" padding="1px">
    	<center>
    	<tr>
    	<th>
    	</th>
    	<th>
    	</th>
    	</tr>
    	<tr>
    	<td>
    	<%
   	out.println("<br><br><img src="+img_name+"  height="+"200px"+" width="+"300px"+"/>");
    	  %>
    	    </td>
    	    <td>
    	  
<% 

    	    	out.println(" <h3 style='color:green;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   "+dsc+"</h3>");
    	    %>   
    	    	    <%
    	    %>
    	    <% 
    	    	out.println(" <h3 style='color:green;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   "+name+"</h3>");
    	    %>
    	    <% 
    	    	out.println(" <h3 style='color:green;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   "+price+"</h3>");
    	    %>
    	    <% 
    	    	out.println(" <h3 style='color:green;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   "+email+"</h3>");
    	    %>
    	  	    <%
    	    %>
    	    <% 
    	    	out.println(" <h3 style='color:green;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   "+mob+"</h3>");
    	    %>
    </td>
    <hr><%
    	}
    	
    }
  conn.close();
}
catch(Exception e)
{
		System.out.println("Not  "+e);

}
 
 %>
 
 </tr></center></table>
<!--  Footer  -->
 
    
         <div id="footersi">
       <h3>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;
            
              Support Link:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp; &nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;
              Quick Link:
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Help:
          </h3>
             <div id="navigation-footer" >
      <nav>    
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
</nav>
</div>

<br>
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