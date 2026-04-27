<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>

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

    input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
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

    .footer {
        text-align: center;
        margin-top: 15px;
    }

    .footer a {
        text-decoration: none;
        color: #2575fc;
        font-weight: bold;
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

    <h1>Login</h1>
    
    <h2 style='color:red'>${msg}</h2>

    <form action="do-login">
        
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password :</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <button type="submit" class="btn">Login</button>

    </form>

    <div class="footer">
        Don't have an account? <a href="Register.jsp">Register</a>
    </div>
</div>

</body>
</html>