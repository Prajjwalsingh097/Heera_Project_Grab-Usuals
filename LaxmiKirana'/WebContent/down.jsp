

<%@page import="java.io.FileInputStream"
import=" java.io.IOException"
import="java.io.PrintWriter"
import="javax.servlet.*"
import="javax.servlet.http.HttpServlet"

 %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.getWriter().append("Served at: ").append(request.getContextPath());

		PrintWriter out1=response.getWriter();
		String fileName="a.html";
		String filepath="Documents\\";
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition","attachment; fileName=\""+fileName+"\"");
		FileInputStream fi=new FileInputStream(filepath+fileName);
		int i;
		while((i=fi.read()) != -1)
			out1.write(i);
		
		out1.close();
		fi.close();
}
		%>
</body>
</html>