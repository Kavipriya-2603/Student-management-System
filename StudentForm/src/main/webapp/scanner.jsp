
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Student Scanner</title>

<!-- QR Scanner Library -->
<script src="https://unpkg.com/html5-qrcode"
        type="text/javascript">
</script>

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
        url("https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

.scanner {

    width: 450px;
    padding: 30px;
    text-align: center;

    background: rgba(255,255,255,0.25);
    backdrop-filter: blur(10px);

    border-radius: 15px;
}

h1 {

    margin-bottom: 25px;
}

#reader {

    width: 100%;
    margin: 20px auto;
}

input {

    width: 80%;
    padding: 10px;

    border: none;
    border-radius: 5px;

    margin-bottom: 15px;
}

button {

    padding: 10px 25px;

    background: green;
    color: white;

    border: none;
    border-radius: 5px;

    cursor: pointer;
}

button:hover {

    background: darkgreen;
}

.stuId {

    margin-top: 25px;
    padding-top: 20px;

    border-top: 1px solid rgba(0,0,0,0.2);
}

/* Back Button */

.back-btn {

    display: block;

    width: 100px;

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

<div class="scanner">

    <h1>Student Scanner</h1>

    <!-- QR Scanner -->

    <div id="reader"></div>

    <p>Scan the student's QR code</p>

    <div class="stuId">

        <h3>Or Enter Student ID</h3>

        <br>

        <form action="scanner" method="get">

            <input
                type="number"
                name="Id"
                placeholder="Enter Student ID"
                required
            >

            <br>

            <button type="submit">
                Search
            </button>

        </form>

    </div>

    <!-- Back Button -->

    <button type="button"
            class="back-btn"
            onclick="history.back()">

        Back

    </button>

</div>


<script>

function onScanSuccess(decodedText, decodedResult) {

    console.log("QR Result:", decodedText);

    window.location.href =
        "scanner?Id=" + encodeURIComponent(decodedText);
}

function onScanFailure(error) {
}

let scanner =
    new Html5QrcodeScanner("reader", {
        fps: 10,
        qrbox: 250
    });

scanner.render(onScanSuccess, onScanFailure);

</script>


</body>

</html>

