<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 100vh;}

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* Center align login box */
        .login-box {
            margin: auto;
            max-width: 400px;
            padding: 20px;
            background-color: #f8f8f8;
            border-radius: 5px;
            margin-top: 100px;
        }

        /* Add some spacing between login box elements */
        .login-box input[type="text"],
        .login-box input[type="password"],
        .login-box button {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="container-fluid text-center">
    <div class="row content">
        <!-- Main Center Start -->
        <div class="col-sm-4"></div>
        <div class="col-sm-4 login-box">
            <h2>Login</h2>
            <form action="/login" method="post">
                <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
            <p>New user? <a href="/register">Register</a></p>
        </div>
        <div class="col-sm-4"></div>
        <!-- Main Center End -->
    </div>
</div>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>
</html>
