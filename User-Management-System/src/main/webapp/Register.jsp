<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #74ebd5, #9face6);
        margin: 0;
        padding: 0;
    }

    .container {
        width: 400px;
        background: #fff;
        padding: 30px;
        margin: 50px auto;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
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
        margin-top: 20px;
        color: #333;
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }

    input, select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .gender {
        display: flex;
        gap: 15px;
        margin-top: 10px;
    }

    .gender input {
        width: auto;
    }

    .btn {
        margin-top: 20px;
        width: 100%;
        padding: 12px;
        background: #2575fc;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background: #1a5edb;
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

<div class="container">
    <h1>Register</h1>
    
    <h3 style='color:green'>${msg}</h3>

    <form action="do-registration" method="post">
    
        <label for="name">Name :</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email :</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password :</label>
        <input type="password" id="password" name="pass" placeholder="Enter your password" required>

        <label for="city">City :</label>
        <select id="city" name="city">
            <option>Pune</option>
            <option>Nashik</option>
            <option>Mumbai</option>
        </select>

        <label>Gender :</label>
        <div class="gender">
            <input type="radio" name="gender" value="Male" required>Male
            <input type="radio" name="gender" value="Female"> Female
        </div>

        <button type="submit" class="btn">Register</button>

    </form>
</div>

</body>
</html>