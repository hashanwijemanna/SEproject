<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERROR!</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="stylesheet" href="./CSS/navigationbarblack.css">
    		<link rel="stylesheet" href="./CSS/Slider.css">
    <style>
        body {
            background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
            color: #00000;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }


        .feedback-form {
            max-width: 400px;
            width: 100%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .feedback-form h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
            color: #555;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        textarea {
            resize: vertical;
        }

        .submit-btn {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
<br><br><br><br><br><br>
<center><img src="./Images/error.png" style="width: 200px; height: auto;"></center><br>
<center><a href="#" onclick="goBack()"><button style="padding: 16px 32px; background-color: red; color: white; border: none; border-radius: 3px; cursor: pointer; transition: background-color 0.3s;"><b><< Go Back</b></button></a></center><br>
</div>


<script>
        function goBack() {
            window.history.back();
        }
    </script>

</body>
</html>
