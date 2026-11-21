
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Register</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 20px;

    background-image: url("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;

    min-height: 100vh;

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

    font-family: Arial, sans-serif;
}

.register {
    width: 500px;
    padding: 20px 30px;

    text-align: center;

    background: rgba(255, 255, 255, 0.25);
    backdrop-filter: blur(10px);

    border-radius: 10px;
}

h1 {
    font-size: 40px;
    color: white;
    margin-bottom: 25px;
}

form {
    text-align: left;
}

form > b {
    display: inline-block;
    width: 130px;
    margin-bottom: 10px;
}

input[type="text"],
input[type="number"] {
    width: 250px;
    padding: 8px;

    border: 1px solid #aaa;
    border-radius: 5px;
}

textarea {
    width: 250px;
    padding: 8px;

    border: 1px solid #aaa;
    border-radius: 5px;

    resize: vertical;
}

fieldset {
    margin: 15px 0;
    padding: 15px;

    border: 1px solid #555;
    border-radius: 8px;
}

fieldset input[type="number"] {
    width: 120px;
}

fieldset label {
    margin-right: 10px;
}

.button {
    display: block;

    margin: 15px auto 0;
    padding: 10px 30px;

    background-color: green;
    color: white;

    border: none;
    border-radius: 5px;

    cursor: pointer;
}

.button:hover {
    background-color: darkgreen;
}

.fees-btn {
    display: block;

    width: 180px;

    margin: 20px auto 0;
    padding: 10px;

    text-align: center;
    text-decoration: none;

    background-color: #1976d2;
    color: white;

    border-radius: 5px;
}

.fees-btn:hover {
    background-color: #125aa0;
}

/* Back Button */
.back-btn {
    display: block;

    width: 180px;

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

<div class="register">

    <h1>Register Form</h1>

    <form action="register" method="post">

        <b>NAME</b>

        <input type="text"
               name="Name"
               placeholder="Enter the name"
               id="name"
               pattern="[A-Za-z]+"
               required>

        <br><br>


        <b>REG.NO</b>

        <input type="number"
               name="Id"
               placeholder="Enter the student id"
               id="Id"
               required>

        <br><br>


        <fieldset>

            <legend>
                <b>QUALIFICATION</b>
            </legend>

            <b>12th</b>

            <input type="checkbox"
                   name="Qualification"
                   value="12th"
                   required>

            <label>Percentage</label>

            <input type="number"
                   name="percentage"
                   min="0"
                   max="100"
                   required>

            <br><br>


            <b>10th</b>

            <input type="checkbox"
                   name="Qualification"
                   value="10th">

            <label>Percentage</label>

            <input type="number"
                   name="percentage"
                   min="0"
                   max="100">

            <br>

        </fieldset>

        <br>


        <b>ADDRESS</b>

        <br>

        <textarea name="Address"
                  rows="8"
                  cols="16"
                  required></textarea>

        <br><br>


        <b>DEPARTMENT</b>

        <input type="radio"
               value="ECE"
               name="Dept"
               required>
        <label>ECE</label>

        <input type="radio"
               value="EEE"
               name="Dept">
        <label>EEE</label>

        <input type="radio"
               value="Civil"
               name="Dept">
        <label>Civil</label>

        <input type="radio"
               value="Mech"
               name="Dept">
        <label>Mech</label>

        <input type="radio"
               value="CSE"
               name="Dept">
        <label>CSE</label>

        <br><br>


        <button class="button" type="submit">
            Register
        </button>

    </form>

</div>



<button type="button" class="back-btn" onclick="history.back()">
    Back
</button>

<a href="fees.jsp" class="fees-btn">
    Fees Structure
</a>


</body>
</html>
