<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
</html>
<head>
<meta charset="UTF-8">
<title>All Users</title>

<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        background: linear-gradient(to right, #74ebd5, #9face6);
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

    /* Container */
    .container {
        width: 90%;
        margin: 40px auto;
        background: #fff;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: #2575fc;
        color: white;
        padding: 12px;
    }

    td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background: #f5f5f5;
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

<!-- Content -->
<div class="container">
    <h2>All Users</h2>

    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>City</th>
            <th>Gender</th>
        </tr>

        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>${user.city}</td>
                <td>${user.gender}</td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>