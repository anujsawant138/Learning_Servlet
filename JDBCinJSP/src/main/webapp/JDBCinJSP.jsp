<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("org.postgresql.Driver");
String url = "jdbc:postgresql://localhost:5432/First";
String user = "postgres";
String pass="root";
Connection con = DriverManager.getConnection(url,user,pass);
Statement st = con.createStatement();
ResultSet r = st.executeQuery("SELECT * FROM studentdbms where id=1;");
if (r.next()) {
    out.print("ID: " + r.getInt(1) + "<br>");
    out.print("Name: " + r.getString(2) + "<br>");
    out.print("Age: " + r.getInt(3) + "<br>");
    out.print("Branch: " + r.getString(4) + "<br>");
} else {
    out.print("No record found for ID = 1");
}


%>
</body>
</html>