<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="Entity.Register" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Department Students</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* BODY */

body {

    min-height: 100vh;

    padding: 40px;

    font-family: Arial, sans-serif;

    background-image:
        url("https://images.pexels.com/photos/3184436/pexels-photo-3184436.jpeg");

    background-size: cover;

    background-position: center;

    background-repeat: no-repeat;
}


/* MAIN CONTAINER */

.container {

    width: 95%;

    margin: auto;

    padding: 30px;

    background: rgba(255, 255, 255, 0.25);

    backdrop-filter: blur(10px);

    border-radius: 15px;
}


/* HEADING */

h1 {

    text-align: center;

    margin-bottom: 10px;

    color: black;
}


/* STUDENT COUNT */

.student-count {

    text-align: center;

    font-size: 22px;

    font-weight: bold;

    margin-bottom: 25px;
}


/* TABLE */

table {

    width: 100%;

    border-collapse: collapse;

    background: rgba(255, 255, 255, 0.75);
}


/* TABLE HEADING */

th {

    padding: 12px;

    background-color: #1976d2;

    color: white;

    border: 1px solid #ddd;
}


/* TABLE DATA */

td {

    padding: 10px;

    text-align: center;

    border: 1px solid #aaa;
}


/* HOVER */

tr:hover {

    background-color: rgba(255, 255, 255, 0.8);
}


/* NO STUDENTS */

.no-students {

    text-align: center;

    padding: 25px;

    font-size: 20px;

    font-weight: bold;
}


/* BACK BUTTON */

.back-btn {

    display: block;

    width: 100px;

    margin: 25px auto 0;

    padding: 10px;

    text-align: center;

    text-decoration: none;

    background-color: #555;

    color: white;

    border-radius: 5px;

    transition: 0.3s;
}


/* BACK BUTTON HOVER */

.back-btn:hover {

    background-color: #333;

    transform: scale(1.05);
}

</style>

</head>


<body>


<%

    String dept =
        (String) request.getAttribute("dept");


    List<Register> students =
        (List<Register>) request.getAttribute("students");


    if (students == null) {

        students =
            new java.util.ArrayList<Register>();

    }

%>


<div class="container">


    <!-- HEADING -->

    <h1>

        <%= dept %> Department Students

    </h1>


    <!-- STUDENT COUNT -->

    <div class="student-count">

        Total Students:
        <%= students.size() %>

    </div>


    <%

        if (students.size() > 0) {

    %>


    <!-- STUDENT TABLE -->

    <table>

        <thead>

            <tr>

                <th>ID</th>

                <th>Name</th>

                <th>Qualification</th>

                <th>Percentage</th>

                <th>Address</th>

                <th>Department</th>

            </tr>

        </thead>


        <tbody>

        <%

            for (Register student : students) {

        %>


            <tr>

                <td>

                    <%= student.getId() %>

                </td>


                <td>

                    <%= student.getName() %>

                </td>


                <td>

                    <%= student.getQualification() %>

                </td>


                <td>

                    <%= student.getPercentage() %>

                </td>


                <td>

                    <%= student.getAddress() %>

                </td>


                <td>

                    <%= student.getDept() %>

                </td>

            </tr>


        <%

            }

        %>

        </tbody>

    </table>


    <%

        }

        else {

    %>


        <div class="no-students">

            No students found in
            <%= dept %>
            department.

        </div>


    <%

        }

    %>


    <!-- BACK BUTTON -->

    <a href="home" class="back-btn">

        Back

    </a>


</div>


</body>

</html>