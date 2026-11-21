<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Register Success</title>

<style>

body {
    margin: 0;
    padding: 0;
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;

    background-image: url("https://pixabay.com/vectors/frame-leaves-watercolor-background-4822807/");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.success {
    width: 400px;
    padding: 30px;

    text-align: center;

    background: rgba(255, 255, 255, 0.85);
    border-radius: 15px;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
}

.success h1 {
    color: green;
    font-size: 28px;
}

.success p {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 18px;
    margin-bottom: 20px;
}

#qrcode {
    display: flex;
    justify-content: center;
    margin: 20px 0;
}

.home-btn {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px 25px;

    background: green;
    color: white;

    text-decoration: none;
    border-radius: 5px;
}

.home-btn:hover {
    background: darkgreen;
}

/* Back Button */
.back-btn {
    display: flex;
    justify-content: center;
    align-items: center;

    padding: 10px 25px;
    margin-top: 10px;

    background: #555;
    color: white;

    border: none;
    border-radius: 5px;

    cursor: pointer;
    width: 100%;
}

.back-btn:hover {
    background: #333;
}

</style>

</head>

<%
String id = request.getParameter("Id");
System.out.println("ID from URL" + id);
%>

<body>

<div class="success">

    <h1>Register Successfully!!!</h1>

    <p>Student ID: <%= id %></p>

    <div id="qrcode"></div>

    <a class="home-btn" href="home">
        Home
    </a>
    <br>

    <a class="home-btn"
       href="fees.jsp?name=<%= java.net.URLEncoder.encode(request.getParameter("Name") == null ? "" : request.getParameter("Name"), "UTF-8") %>&dept=<%= java.net.URLEncoder.encode(request.getParameter("Dept") == null ? "" : request.getParameter("Dept"), "UTF-8") %>">
        Fees & Payment
    </a>

    <!-- Back Button -->
    <button type="button" class="back-btn" onclick="history.back()">
        Back
    </button>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

<script>

let studentId = "<%= id %>";

new QRCode(document.getElementById("qrcode"), {
    text: studentId,
    width: 200,
    height: 200
});

</script>

</body>
</html>

