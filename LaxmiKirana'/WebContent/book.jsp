<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LEDGER BAR</title>


<style>



#footersi{
    height:300px;
    width:100%;
    color:#ffffff;
    background-color:#8080ff;
    position:absolute;
    top:600px;
    
}
.btn{
width:10%;
background: none;
border: 2px solid #4caf50;
color:white;
padding :5px;
font-size: 18px;
cursor: pointer;
margin: 12px 0;
	
}
 h1{
	top:30%;
	float: left;
	font-size: 40px;
	border-bottom: 6px solid #4caf50;
	margin-bottom: 50px;
	padding: 13px 0;
	
}

.loginbox{
	
	width:600px;
	position: absolute;
	top:60%;
	left:50%;
	transform: translate(-50%,-50%);
	color:white;
	
}
.btn1{
width:50%;
background: none;
border-radius:35%;
color:white;
padding :5px;
font-size: 25px;
cursor: pointer;
margin: 22px 0;
	
}
</style>



</head>

<body background="a.jpg">


<%

String mobile="";
String uid = (String)session.getAttribute("user");
String uid1 = (String)session.getAttribute("user1");
uid=uid.trim();
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
	 String a="select * from kiranastore where name='";
     
	
	Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a+uid+"'");
    rs.next();
    mobile=rs.getString(2);
   
    System.out.println("Successfully Connected "+mobile);
	conn.close();
}
catch(Exception e)
{
	System.out.println("Not  "+e);

}
//System.out.println(uid1);




String p1=request.getParameter("test1");
String q1=request.getParameter("test11");

String p2=request.getParameter("test2");
String q2=request.getParameter("test22");

String p3=request.getParameter("test3");
String q3=request.getParameter("test33");

String p4=request.getParameter("test4");
String q4=request.getParameter("test44");

String q="INSERT INTO BOOK(name "+p1+p2+p3+p4+",mobile) values('"+uid+"'"+q1+q2+q3+q4+","+mobile+")";
System.out.println(q);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");

	PreparedStatement stmt =conn.prepareStatement(q);
	
	stmt.executeUpdate();
	
	System.out.println("Successfully Connected "+p1+" "+q1+mobile);
	
	
	conn.close();
	
}
catch(Exception e)
{

System.out.println("not "+e);
}








String ata="",dal="",sugar="",oil="";

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
	 String a="select * from book where mobile='";
     
	
	Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a+mobile+"'");
    rs.next();
    ata=rs.getString(2);
    if(ata.equals(null)||ata.equals("")){
    	ata="0";
    }
    ata=ata.trim();
    rs.next();
    
    oil=rs.getString(3);
    if(oil.equals(null)||oil.equals("")){
    	    	oil="0";
    }
  
    oil=oil.trim();
    rs.next();
    
    sugar=rs.getString(4);
    if(sugar.equals(null)||sugar.equals("")){
    	     	sugar="0";
    }
  
    sugar=sugar.trim();
    rs.next();
    
    dal=rs.getString(5);
    if(dal.equals(null)||dal.equals("")){
    	     	dal="0";
    }
  
    dal=dal.trim();
    
    
    
    
    
    System.out.println("Successfully Connected "+ata+dal);
	conn.close();
}
catch(Exception e)
{
	System.out.println("Not  "+e);

}
//System.out.println(uid1);



%>



<div  id="heading" >
    
 <p  style="color:crimson;"     >
 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="e.png"  height="100" width="145" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <font size="12" >
 Laxmi Kirana Store</font>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <a href="logged.jsp">
   <button class="btn">Home</button>
</a>   
	   
	   
 
</div>


<div class="loginbox" >

<% 

//int tot=a1+o1+d1+s1;

ata=ata.trim();
oil=oil.trim();
dal=dal.trim();
sugar=sugar.trim();


out.println("<h1>"+" ATA :  "+ata+"kg = "+Integer.parseInt(ata)*20+"<br>"+" OIL :  "+oil+"kg = "+Integer.parseInt(oil)*80+"<br>"+" DAL :  "+dal+"kg = "+Integer.parseInt(dal)*85+"<br>"+" SUGAR :  "+sugar+"kg = "+Integer.parseInt(sugar)*40+"<br> Total       :  "+(+Integer.parseInt(sugar)*40+Integer.parseInt(oil)*80+Integer.parseInt(dal)*85+Integer.parseInt(ata)*20)+"</h1>");



%>

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