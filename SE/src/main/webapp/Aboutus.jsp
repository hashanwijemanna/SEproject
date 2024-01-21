<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <!-- CSS -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        ::-webkit-scrollbar {
            display: none;
        }

        body {
            background-color: #bbbbbf;
            font-family: sans-serif;
            margin: 0;
            padding: 0;
        }

        #heading {
            text-align: center;
            font-size: 2.5em;
            margin-top: 50px;
            transform: translate(0%,50%);
        }

        #students {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
            margin-top: 30px;
            transform: translate(0%,20%);
        }

        .student-card {
            width: 100%;
            border-radius: 20px;
            overflow: hidden;
            margin: 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .student-card:hover {
            transform: scale(1.05);
        }

        .student-photo {
            width: 100%;
            height: auto;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }

        .student-details {
            padding: 15px;
            background-color: #fff;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
        }

        .student-number {
            font-size: 1.5em;
            font-weight: 900;
        }

        .student-info {
            font-size: 1.2em;
            margin-top: 10px;
            color: #333;
        }

        .editor-image {
            height: 70px;
            width: 70px;
            margin: 0;
            position: fixed;
            bottom: 20px;
            right: 20px;
            border-radius: 15px;
            transition: opacity 0.3s;
        }

        .editor-image:hover {
            opacity: 0.8;
        }
        body {
            margin: 0;
            padding: 0;
        }
        #navigation li{
            display: inline;
            text-decoration: none;
        }
        #navigation a{
            text-decoration: none;
            padding: 9px 18px;
            color: black;
            font-weight: bold;
            border-radius: 18px;
        }
        .parts :hover{
            background-color: rgba(0, 0, 0, 0.2);
            height: 5px;
            z-index: 1;
        }
        #navigation{
            position: absolute;
            margin-left: 51%;
            top: 1%;
            font-family: sans-serif;
            color: black;
            z-index: 1;
            transform: translate(80%);
        }
        .logo{
            position: absolute;
            top: 2%;
            left: 1%;
            z-index: 1;
        }
        body {
            margin:0;
        }
    </style>
</head>
<body>
<!-- Navigation bar -->
<div class="navigation bar">
    <ul id="navigation">
        <li class="parts"><a href="Home.jsp">Home</a></li>
        <li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
        <li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
        <li class="parts"><a href="Aboutus.jsp">About Us</a></li>
    </ul>
</div>

<!-- Heading -->
<h1 id="heading">About Us</h1>

<!-- Students -->
<div id="students">
    <!-- Student 1 -->
    <div class="student-card">
        <a href="https://www.linkedin.com/in/thamal-thathsara-b42814205?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" class="student-card"></a>
        <img class="student-photo" src="./Images/thamal.jpg" alt="Thamal">
        <div class="student-details">
            <p class="student-number">Thamal Thathsara</p>
            <p class="student-info">BSc (Hons) in Computer Security</p>
        </div>
    </div>

    <!-- Student 2 -->
    <div class="student-card">
        <img class="student-photo" src="./Images/hashan.jpg" alt="Hashan">
        <div class="student-details">
            <p class="student-number">Hashan Wijemanna</p>
            <p class="student-info">BSc (Hons) in Computer Networking</p>
        </div>
    </div>

    <!-- Student 3 -->
    <div class="student-card">
        <img class="student-photo" src="./Images/sahan.jpg" alt="Sahan">
        <div class="student-details">
            <p class="student-number">Sahan Sandeepa</p>
            <p class="student-info">BSc (Hons) in Computer Security</p>
        </div>
    </div>

    <!-- Student 5 -->
    <div class="student-card">
        <img class="student-photo" src="./Images/maheshi.jpg" alt="Pawani">
        <div class="student-details">
            <p class="student-number">Maheshika Bandara</p>
            <p class="student-info">BSc (Hons) in Computer Security</p>
        </div>
    </div>

    <!-- Student 4 -->
    <div class="student-card">
        <img class="student-photo" src="./Images/rawini.jpg" alt="Ravani">
        <div class="student-details">
            <p class="student-number">Rawini Satheesha</p>
            <p class="student-info">BSc (Hons) in Computer Security</p>
        </div>
    </div>


    <!-- Student 6 -->
    <div class="student-card">
        <img class="student-photo" src="./Images/adithya.jpg" alt="Adithya">
        <div class="student-details">
            <p class="student-number">Adithya Pushpakumara</p>
            <p class="student-info">BSc (Hons) in Computer Security</p>
        </div>
    </div>
    <!-- End of student cards -->
</div>
</body>
</html>