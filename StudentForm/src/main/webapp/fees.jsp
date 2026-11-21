<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Fees Structure & Payment</title>

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
    background-repeat: no-repeat;
    background-position: center;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: Arial, sans-serif;
}


/* Main Container */

.fees-container {
    width: 500px;
    padding: 30px;

    background: rgba(255, 255, 255, 0.25);
    backdrop-filter: blur(10px);

    border-radius: 12px;
}


/* Heading */

h1 {
    text-align: center;
    color: white;
    margin-bottom: 25px;
}


/* Form Group */

.form-group {
    margin-bottom: 18px;
}

.form-group > label {
    display: block;
    margin-bottom: 7px;
    font-weight: bold;
}


/* Name and Department */

.form-group input[type="text"],
.form-group select {
    width: 100%;
    padding: 10px;

    border: 1px solid #aaa;
    border-radius: 5px;

    font-size: 15px;
}


/* Fee */

#fee {
    background-color: #eeeeee;
}


/* Semester */

.semester {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 10px;

    margin-top: 10px;
}

.semester label {
    padding: 9px;

    background: rgba(255, 255, 255, 0.5);

    border-radius: 5px;

    cursor: pointer;
}


/* Payment Section */

.payment-section {
    margin-top: 25px;
    padding: 20px;

    background: rgba(255, 255, 255, 0.45);

    border-radius: 8px;

    text-align: center;
}

.payment-section h2 {
    margin-bottom: 15px;
}

.payment-amount {
    font-size: 20px;
    font-weight: bold;

    margin-bottom: 15px;
}


/* Pay Button */

.pay-btn {
    width: 150px;
    padding: 10px;

    background-color: green;
    color: white;

    border: none;
    border-radius: 5px;

    cursor: pointer;
}

.pay-btn:hover {
    background-color: darkgreen;
}


/* Back Button */

.back-btn {
    display: block;

    width: 100px;

    margin: 15px auto 0;
    padding: 8px;

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
String studentName = request.getParameter("name");
String studentDept = request.getParameter("dept");
%>

<div class="fees-container">

    <h1>Fees Structure</h1>


    <form action="payment" method="post">


        <!-- Student Name -->

        <div class="form-group">

            <label>Student Name</label>

            <input type="text"
                   name="name"
                   placeholder="Enter student name"
                   value="<%= studentName == null ? "" : studentName %>"
                   required>

        </div>


        <!-- Department -->

        <div class="form-group">

            <label>Department</label>

            <select name="dept"
                    id="dept"
                    onchange="showFee()"
                    required>

                <option value="">
                    Select Department
                </option>

                <option value="ECE" <%= "ECE".equals(studentDept) ? "selected" : "" %>>
                    ECE
                </option>

                <option value="EEE" <%= "EEE".equals(studentDept) ? "selected" : "" %>>
                    EEE
                </option>

                <option value="CSE" <%= "CSE".equals(studentDept) ? "selected" : "" %>>
                    CSE
                </option>

                <option value="Civil" <%= "Civil".equals(studentDept) ? "selected" : "" %>>
                    Civil
                </option>

                <option value="Mech" <%= "Mech".equals(studentDept) ? "selected" : "" %>>
                    Mech
                </option>

            </select>

        </div>


        <!-- Semester -->

        <div class="form-group">

            <label>Semester</label>


            <div class="semester">

                <label>
                    <input type="radio"
                           name="semester"
                           value="1"
                           required>
                    Semester 1
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="2">
                    Semester 2
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="3">
                    Semester 3
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="4">
                    Semester 4
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="5">
                    Semester 5
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="6">
                    Semester 6
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="7">
                    Semester 7
                </label>


                <label>
                    <input type="radio"
                           name="semester"
                           value="8">
                    Semester 8
                </label>

            </div>

        </div>


        <!-- Fees Amount -->

        <div class="form-group">

            <label>Fees Amount</label>

            <input type="text"
                   id="fee"
                   name="fee"
                   placeholder="Select department"
                   readonly>

        </div>


        <!-- Payment -->

        <div class="payment-section">

            <h2>Payment</h2>

            <div class="payment-amount">

                Amount:
                ₹<span id="paymentAmount">---</span>

            </div>

            <button type="submit"
                    class="pay-btn">

                Pay Now

            </button>

        </div>


    </form>


    <!-- Back -->

    <a href="register.jsp"
       class="back-btn">

        Back

    </a>


</div>


<script>

function showFee() {

    let dept = document.getElementById("dept").value;

    let fee = document.getElementById("fee");

    let paymentAmount =
        document.getElementById("paymentAmount");


    if (dept === "ECE") {

        fee.value = "50000";
        paymentAmount.innerHTML = "50000";

    }

    else if (dept === "EEE") {

        fee.value = "45000";
        paymentAmount.innerHTML = "45000";

    }

    else if (dept === "CSE") {

        fee.value = "60000";
        paymentAmount.innerHTML = "60000";

    }

    else if (dept === "Civil") {

        fee.value = "40000";
        paymentAmount.innerHTML = "40000";

    }

    else if (dept === "Mech") {

        fee.value = "45000";
        paymentAmount.innerHTML = "45000";

    }

    else {

        fee.value = "";
        paymentAmount.innerHTML = "---";

    }

}

</script>


</body>
</html>