<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/bbs?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&useSSL=false";
Connection conn=DriverManager.getConnection(url);
Statement stmt=conn.createStatement();
String sql="select * from article";
ResultSet rs=stmt.executeQuery(sql);
System.out.println(sql);

%>
<% out.println("HelloWorld From Eclipse"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%
while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("id") %></td>
		<td><%=rs.getString("cont") %></td>
	</tr>
<%
}%>
</table>
</body>
<%
rs.close();
stmt.close();
conn.close();
%>
</html>