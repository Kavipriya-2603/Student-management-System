<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
body{
    background-color:#f2f2f2;
    font-family:Arial, sans-serif;
    background-image:url("https://pixabay.com/vectors/frame-leaves-watercolor-background-4822807/");
    display:flex;
    justify-content:center;
    align-items:center;
}

.failed{
width:400px;
margin:100px;
background: white;
padding:20px;
text-align:center;
border-radius:10px;


}
h1{
color:red;

}
</style>
</head>
<body>
<div class="failed">
	<h1>Invalid Login !</h1>
	<p> Invalid username or password</p>
	<a href="Login.jsp">Try Again</a>
</div>

</body>
</html>