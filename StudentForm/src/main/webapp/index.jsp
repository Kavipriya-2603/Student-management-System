<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Management</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;

    background-image: url("https://images.pexels.com/photos/3184436/pexels-photo-3184436.jpeg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.container {
    width: 450px;
    padding: 40px;

    text-align: center;

    background: rgba(255, 255, 255, 0.25);
    backdrop-filter: blur(10px);

    border-radius: 15px;
}

h1 {
    margin-bottom: 30px;
    font-size: 30px;
}

.button {
    display: inline-block;

    padding: 12px 30px;

    background: green;
    color: white;

    text-decoration: none;

    border-radius: 6px;

    font-size: 16px;
}

.button:hover {
    background: darkgreen;
}

</style>

</head>

<body>

<div class="container">

    <h1>Student Management System</h1>

    <a href="Login.jsp" class="button">
        Go to Home
    </a>

</div>

</body>
</html>