<%-- 
    Document   : ErrorHandling
    Created on : 13 Jan 2026, 2:18:44 pm
    Author     : anuj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background: #f4f6f8;
        }
        .error-box {
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #e74c3c;
            margin-bottom: 10px;
        }
        p {
            color: #555;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: white;
            background: #3498db;
            padding: 10px 20px;
            border-radius: 6px;
        }
        a:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>

<div class="error-box">
    <h1>Oops!</h1>
    <p>Something went wrong while processing your request.</p>

    <%= exception.getMessage()
    %>
</div>

</body>
</html>
