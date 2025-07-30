<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        .login-container {
            width: 300px;
            margin: 100px auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px #ccc;
            border-radius: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #0288d1;
            color: white;
            border: none;
        }
    </style>
</head>
<body onload="startTimer();" style="margin:0; padding:0; background-image: url('img_files/4.webp'); background-size: cover; background-position: center; background-repeat: no-repeat; height: 100vh;">
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <label>Username:</label>
            <input type="text" name="username" required />
            <label>Password:</label>
            <input type="password" name="password" required />
            <input type="submit" value="Login" />
        </form>
    </div>
</body>
</html>
