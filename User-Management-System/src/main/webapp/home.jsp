<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My First Web Application</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #74ebd5, #9face6);
        margin: 0;
        padding: 0;
        text-align: center;
    }

    /* Navbar */
   .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: #2c3e50;
        padding: 15px 40px;
        position: sticky;
        top: 0;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .logo {
        color: #fff;
        font-size: 22px;
        font-weight: bold;
    }

    .nav-links a {
        color: white;
        text-decoration: none;
        margin-left: 25px;
        font-size: 16px;
        transition: 0.3s;
    }

    .nav-links a:hover {
        color: #74ebd5;
    }

    h1 {
        text-align: center;
        margin-top: 40px;
        color: #333;
    }

    .container {
        width: 400px;
        padding: 40px;
        background: #fff;
        margin: 50px auto;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    .btn {
        display: block;
        text-decoration: none;
        color: white;
        background: #4CAF50;
        padding: 12px;
        margin: 15px 0;
        border-radius: 5px;
        font-size: 18px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #45a049;
    }
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">MyApp</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="Login.jsp">Login</a>
        <a href="Register.jsp">Register</a>
        <a href="all-Users">Get All Users</a>
    </div>
</div>

<h1>User-Management-System</h1>

<div class="container">
    <a href="Login.jsp" class="btn">🔐 Login</a>
    <a href="Register.jsp" class="btn">📝 Register</a>
    <a href="all-Users" class="btn">👥Get All Users</a>
</div>

</body>
</html>
