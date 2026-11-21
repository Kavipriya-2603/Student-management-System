<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>

body{
    margin:0;
    padding:0;
    background-image:url("https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg");
    background-size:cover;
    background-repeat:no-repeat;
    background-position:center;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    font-family:Arial, sans-serif;
}
.container {
    text-align: center;
}

.login{
    width:350px;
    margin:100px auto;
    padding:30px;
    text-align:center;
    background:rgba(255,255,255,0.25);
    backdrop-filter:blur(10px);
    border-radius:10px;
}

h1{
	font-size:30px;
    color:black;
}

.white{
 color:black;
}
.button {
    display: inline-block;
    padding: 10px 25px;
    background: green;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.button:hover {
    background: darkgreen;
}


</style>
</head>
<body>
<div class="container">
<div class="login">

<h1>LOGIN HERE</h1>
<form action="login" method="post">
<b class="white">Username  </b>
<input type="text"
	   name="username"
	   placeholder="enter username" 
	   id="username" 
	   pattern="[A-Za-z]+" required>
	    <br><br>

	<b class="white">Password  </b>
	<input type="password"
	   name="password" 
	   placeholder="enter password" 
	   id="password" 
	   pattern="(?=.*[A-Za-z])(?=.*[0-9])(?=.*@)[A-Za-z0-9@]{8}"
	   required><br><br>
	   
	<button type="Submit" 
			value="login" 
			placeholder="login">Login</button>
</form><br>

</div >
<a class="button" href="scanner.jsp">Scanner</a>
</div><br><br>

	
</body>
</html>