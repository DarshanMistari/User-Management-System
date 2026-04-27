<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
        margin: 0;
        padding: 0;
    }

    /* Navbar */
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: #2c3e50;
        padding: 15px 40px;
        color: white;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .logo {
        font-size: 22px;
        font-weight: bold;
    }

    .nav-links a {
        color: white;
        text-decoration: none;
        margin-left: 20px;
        font-size: 16px;
        transition: 0.3s;
    }

    .nav-links a:hover {
        color: #74ebd5;
    }

    /* Card */
    .container {
        width: 400px;
        margin: 60px auto;
        background: white;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .info {
        font-size: 18px;
        margin: 10px 0;
        color: #555;
    }

    .label {
        font-weight: bold;
        color: #2c3e50;
    }

    .btn {
        display: block;
        text-align: center;
        text-decoration: none;
        background: #27ae60;
        color: white;
        padding: 10px;
        margin-top: 20px;
        border-radius: 8px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #219150;
    }
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">MyApp</div>
    <div class="nav-links">
        <a href="home.jsp">Home</a>
        <a href="Login.jsp">Login</a>
        <a href="Register.jsp">Register</a>
        <a href="all-Users">Get All Users</a>
    </div>
</div>

<!-- User Info Card -->
<div class="container">
    <h2>User Details</h2>

    <div class="info"><span class="label">Name:</span> ${user.name}</div>
    <div class="info"><span class="label">Email:</span> ${user.email}</div>
    <div class="info"><span class="label">Password:</span> ${user.password}</div>
    <div class="info"><span class="label">City:</span> ${user.city}</div>
    <div class="info"><span class="label">Gender:</span> ${user.gender}</div>

    <a href="Login.jsp" class="btn">Go to Login</a>
</div>

</body>
</html>
