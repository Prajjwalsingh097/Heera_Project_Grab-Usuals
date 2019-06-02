<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String nm=request .getParameter("un");
String ps=request .getParameter("ps");
int i=0;
String n1;
String n2;

String p1;
//JDBC
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","root");
	//FRAME WORK
	
	String a="select * from kiranastore where mobile='";
     
	
	Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(a+nm+"'");
    rs.next();
    n1=rs.getString(1);
    n2=rs.getString(2);
    
    String pass=rs.getString(5);
    pass=pass.trim();
    ps=ps.trim();

    System.out.println("Successfully Connected ");

    System.out.println("User="+nm+"Pass="+ps);
    System.out.println("Name="+n1+"Pass="+pass);
    

    System.out.println("Successfully Connected ");
	if(ps.equals(pass))
	{
		i=1;
	
		session.setAttribute("user",n1);//THIS IS HOW WE DECLARE THE USER IN A SESSION
		session.setAttribute("user1",n2);//THIS IS HOW WE DECLARE THE USER IN A SESSION
		response.sendRedirect("logged.jsp"); //AND WE REDIRECTED TO LOGIN PAGE

	%>	
		<h1>
		
		<%
		out.println("Welcome"+n1);
		%>
		
		</h1>
		
		
		<%
	}else
	{
	response.sendRedirect("login.jsp");
	
	}
	
	
	//CLOSE CONNECTION
	conn.close();
}
catch(Exception e)
{
	i=0;
	System.out.println("Not  "+e);

}
%>
</body>
</html>