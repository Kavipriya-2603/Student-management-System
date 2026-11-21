<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
<style type="text/css">

body{
    background-color:#f2f2f2;
    font-family:Arial, sans-serif;
    background-image:url("https://pixabay.com/vectors/frame-leaves-watercolor-background-4822807/");
    display:flex;
    justify-content:center;
    align-items:center;
}

.sucess{
width:400px;
margin:100px;
background: white;
padding:20px;
text-align:center;
border-radius:10px;


}
h1{
	color:green;
}
.button{
color:white;
background:green;
text-decoration:none;
padding:8px;
border-radius:5px;
margin: 0 15px;



}

</style>
</head>
<body>
<div class="sucess">
<h1>Login Successfully!!! </h1><br>
<a class="button" href="home">Home</a>
<a class="button" href="register.jsp">Register</a>
<a class="button" href="scanner.jsp">Scanner</a>


</div>

</body>
</html>