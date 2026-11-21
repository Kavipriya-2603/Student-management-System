<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Dashboard</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;

    background-image:
        url("https://images.pexels.com/photos/3184436/pexels-photo-3184436.jpeg");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.container {
    width: 750px;
    padding: 35px;

    text-align: center;

    background: rgba(255, 255, 255, 0.25);

    backdrop-filter: blur(10px);

    border-radius: 15px;
}

.container h1 {
    font-size: 35px;
    margin-bottom: 30px;
}

.total-box {
    padding: 25px;
    margin-bottom: 30px;

    background: rgba(255, 255, 255, 0.45);

    border-radius: 10px;
}

.total-box h2 {
    margin-bottom: 10px;
}

.total-count {
    font-size: 45px;
    font-weight: bold;
}

.dept-title {
    margin-bottom: 20px;
}

.dept-container {
    display: flex;
    flex-wrap: wrap;

    justify-content: center;

    gap: 18px;
}

.dept-card {
    width: 130px;
    padding: 20px;

    background: rgba(255, 255, 255, 0.45);

    border-radius: 10px;

    text-decoration: none;
    color: black;
}

.dept-card h3 {
    margin-bottom: 12px;
}

.dept-count {
    font-size: 30px;
    font-weight: bold;
}

.dept-card:hover {
    background: rgba(255, 255, 255, 0.75);
}

.nav-btn {
    display: inline-block;

    margin: 25px 8px 0;
    padding: 10px 20px;

    text-decoration: none;

    color: white;

    background: #1976d2;

    border-radius: 5px;
}

.nav-btn:hover {
    background: #125aa0;
}

.back-btn {
    display: block;

    width: 100px;

    margin: 20px auto 0;
    padding: 10px;

    text-align: center;
    text-decoration: none;

    background-color: #555;

    color: white;

    border-radius: 5px;
}

.back-btn:hover {
    background-color: #333;
}

</style>

</head>


<body>

<%

Integer totalStudents =
    (Integer) request.getAttribute("totalStudents");

Map<String, Integer> deptCount =
    (Map<String, Integer>)
    request.getAttribute("deptCount");


if (totalStudents == null) {

    totalStudents = 0;

}


if (deptCount == null) {

    deptCount =
        new java.util.HashMap<String, Integer>();

}

%>


<div class="container">


    <h1>Student Dashboard</h1>


    <div class="total-box">

        <h2>Total Students</h2>

        <div class="total-count">

            <%= totalStudents %>

        </div>

    </div>


    <h2 class="dept-title">

        Department-wise Students

    </h2>


    <div class="dept-container">


        <a class="dept-card"
           href="department?dept=ECE">

            <h3>ECE</h3>

            <div class="dept-count">

                <%= deptCount.getOrDefault("ECE", 0) %>

            </div>

        </a>


        <a class="dept-card"
           href="department?dept=EEE">

            <h3>EEE</h3>

            <div class="dept-count">

                <%= deptCount.getOrDefault("EEE", 0) %>

            </div>

        </a>


        <a class="dept-card"
           href="department?dept=CSE">

            <h3>CSE</h3>

            <div class="dept-count">

                <%= deptCount.getOrDefault("CSE", 0) %>

            </div>

        </a>


        <a class="dept-card"
           href="department?dept=Civil">

            <h3>Civil</h3>

            <div class="dept-count">

                <%= deptCount.getOrDefault("Civil", 0) %>

            </div>

        </a>


        <a class="dept-card"
           href="department?dept=Mech">

            <h3>Mech</h3>

            <div class="dept-count">

                <%= deptCount.getOrDefault("Mech", 0) %>

            </div>

        </a>


    </div>


    <a href="register.jsp"
       class="nav-btn">

        Register Student

    </a>


    <a href="fees.jsp"
       class="nav-btn">

        Fees Structure

    </a>


    <a href="scanner.jsp"
       class="nav-btn">

        Scan Student

    </a>


    <a href="index.jsp"
       class="back-btn">

        Back

    </a>


</div>


</body>

</html>