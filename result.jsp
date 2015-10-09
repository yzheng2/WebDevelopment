<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Results</title>
</head>
<body>
<h1>Survey Results</h1><hr>
Username:<%=request.getParameter("username") %><br>
Gender:<%=request.getParameter("gender") %><br>
Age:<%=request.getParameter("age") %><br>
Favorite Team:<%=request.getParameter("team") %><br>
Reasons:<%
			String[] reasons = request.getParameterValues("reason");
			for(int i=0;i<reasons.length;i++)
			{
				out.println(reasons[i]+"&nbsp;&nbsp;");
			}
			out.println(request.getParameter("other reasons"));
		%>
</body>
</html>