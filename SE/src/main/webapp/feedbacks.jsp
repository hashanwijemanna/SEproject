<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="stylesheet" href="./CSS/navigationbar.css">
    		<link rel="stylesheet" href="./CSS/Slider.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        body {
            background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            margin: 0;
            padding: 0;
            color: #0000;
            height:100vh;
            box-sizing: border-box;
        }


           body {
                  margin: 0;
                  padding: 0;
                  box-sizing: border-box;
              }

              .container {
                  min-height: 80vh;
                  display: flex;
                  flex-direction: column;
                  align-items: center;
                  padding-bottom: 80px; /* Adjust this value based on your footer height */
                  flex-direction: column;
              }


        .feedback-form {
            max-width: 400px;
            width: 500%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 20px #6759ff;
            border-radius: 15px;
            position: relative;
        }

        .feedback-form h2 {
            text-align: center;
            color: #6759ff;
        }

        .form-group {
            margin-bottom: 20px;
            border-bottom: #6759ff;
            background-color: transparent;
            width: 100%;
            border-bottom: 2px solid #6759ff;
            padding: 1em 0.3em;
        }

        label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
            color: #6759ff;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #6759ff;
            border-radius: 4px;
            font-size: 16px;
        }

        textarea {
            resize: vertical;
        }

        .submit-btn {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
            position: relative;
            align-items: center;
            transform: translate(20%);
        }

        .submit-btn:hover {
            background-color: #aeaaf8;
        }

        .clear-btn {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
            position: relative;
            float: right;
            transform: translate(-20%);
        }

        .clear-btn:hover {
            background-color: #aeaaf8;
        }

            footer {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 30px 0;
                position: fixed;
                bottom: 0;
                width: 100%;

            }

            footer div {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            footer p {
                margin: 10px 0;
            }

            footer a {
                color: #4CAF50;
                text-decoration: none;
            }

            footer a:hover {
                text-decoration: underline;
            }
    </style>
</head>
<body>

<div class="container">
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
		<!--Navigation bar-->
		<ul id="navigation">
			<li class="parts"><a href="Home.jsp">Home</a></li>
			<li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
			<li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
			<li class="parts"><a href="#">About Us</a></li>
		</ul>
<br><br><br><br><br><br>

<div class="feedback-form">
        <h2>Feedback Form</h2>
        <form action="FeedbackServlet" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
            </div>
            <button type="submit" class="submit-btn">Submit</button>
            <button type="Reset" class="clear-btn">Clear</button>
        </form>
    </div>

</div>

</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer>
    <div>
        <p>&copy; 2023 GREEN Supermarket</p>
        <p>Contact: <a href="mailto:info@greensupermarket.com">info@greensupermarket.com</a></p>
        <p>Address: 123 Green Street, Cityville</p>
        <p>Follow Us:
            <a href="#" target="_blank">Facebook</a> |
            <a href="#" target="_blank">Twitter</a> |
            <a href="#" target="_blank">Instagram</a>
        </p>
        <p>Subscribe to our newsletter for updates and promotions:</p>
        <form action="#" method="post">
            <input type="email" name="email" placeholder="Your Email" required>
            <button type="submit">Subscribe</button>
        </form>
    </div>
</footer>

</html>
