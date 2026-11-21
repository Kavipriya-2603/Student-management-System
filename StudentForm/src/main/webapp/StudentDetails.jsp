
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Details</title>

<style>

body {
    margin: 0;
    padding: 0;
    height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;

    background-image: url("https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.details {
    width: 400px;
    padding: 30px;

    background: rgba(255,255,255,0.25);
    backdrop-filter: blur(10px);

    border-radius: 10px;
}

.details h1 {
    text-align: center;
    margin-bottom: 25px;
}

.details p {
    font-size: 18px;
    margin: 15px 0;
}

/* Back Button */
.back-btn {
    display: block;
    width: 120px;

    margin: 20px auto 0;
    padding: 10px;

    background-color: #555;
    color: white;

    border: none;
    border-radius: 5px;

    cursor: pointer;
}

.back-btn:hover {
    background-color: #333;
}

</style>

</head>

<body>

<div class="details">

    <h1>Student Details</h1>

    <p>
        <b>ID:</b>
        <%= request.getAttribute("Id") %>
    </p>

    <p>
        <b>Name:</b>
        <%= request.getAttribute("Name") %>
    </p>

    <p>
        <b>Qualification:</b>
        <%= request.getAttribute("Qualification") %>
    </p>

    <p>
        <b>Percentage:</b>
        <%= request.getAttribute("Percentage") %>
    </p>

    <p>
        <b>Address:</b>
        <%= request.getAttribute("Address") %>
    </p>

    <p>
        <b>Department:</b>
        <%= request.getAttribute("Dept") %>
    </p>

    <!-- Back Button -->
    <button type="button" class="back-btn" onclick="history.back()">
        Back
    </button>

    <a href="home" class="back-btn" style="text-align:center; text-decoration:none;">
        Home
    </a>

</div>

</body>
</html>

