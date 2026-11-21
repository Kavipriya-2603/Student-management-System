<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Payment Success</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;

    background-image: url("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg");
    background-size: cover;
    background-position: center;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;
}

.success-box {
    width: 450px;
    padding: 40px;

    text-align: center;

    background: rgba(255, 255, 255, 0.3);
    backdrop-filter: blur(10px);

    border-radius: 12px;
}

h1 {
    color: green;
    margin-bottom: 20px;
}

p {
    font-size: 18px;
    margin-bottom: 25px;
}

.btn {
    display: inline-block;

    padding: 10px 25px;
    margin: 5px;

    text-decoration: none;

    color: white;
    background-color: #1976d2;

    border-radius: 5px;
}

.btn:hover {
    background-color: #125aa0;
}

</style>

</head>

<body>

<div class="success-box">

    <h1>Payment Successful!</h1>

    <p>
        Your fees payment has been completed successfully.
    </p>

    <p>
        <b>Student Name:</b>
        <%= request.getParameter("name") %>
    </p>

    <p>
        <b>Department:</b>
        <%= request.getParameter("dept") %>
    </p>

    <p>
        <b>Semester:</b>
        <%= request.getParameter("semester") %>
    </p>

    <p>
        <b>Amount:</b>
        ₹<%= request.getParameter("amount") %>
    </p>

    <a href="home" class="btn">
        Home
    </a>

    <a href="fees.jsp" class="btn">
        Back
    </a>

</div>

</body>
</html>