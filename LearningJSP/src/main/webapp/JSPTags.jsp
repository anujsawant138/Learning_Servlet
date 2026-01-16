<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="ErrorHandling.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Tags Demo</title>
</head>
<body>

<h1>Hello World!</h1>

<!-- Declaration -->
<%!
    int n = 10;
%>

<p><b>Declaration value:</b> <%= n %></p>

<!-- User Input Form -->
<h2>Enter Two Numbers</h2>

<form method="get">
    <input type="number" name="num1" placeholder="Enter first number" required>
    <input type="number" name="num2" placeholder="Enter second number" required>
    <button type="submit">Add</button>
</form>

<!-- Scriptlet -->
<%
    String a = request.getParameter("num1");
    String b = request.getParameter("num2");

    if (a != null && b != null) {
        int x = Integer.parseInt(a);
        int y = Integer.parseInt(b);
%>

<!-- Expression -->
<h3>Output : <%= x / y %></h3>

<%
    }
%>

<!-- Directive -->
<%@page import="java.util.*" %>

<p>Current Date: <%= new Date() %></p>

</body>
</html>
