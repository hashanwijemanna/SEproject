<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font -->
    <link href='https://fonts.googleapis.com/css?family=Dangrek' rel='stylesheet'>
    <!-- CSS -->
    <link rel="stylesheet" href="./CSS/home.css">
    <link rel="stylesheet" href="./CSS/navigationbar.css">
    <link rel="stylesheet" href="./CSS/Slider.css">
    <style>
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
     body{
    font-family: 'Poppins', sans-serif;
     }
        /* Add card styling here */
        .card-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            width: 20%;
            border: 1px solid #ddd;
            padding: 15px;
            margin: 10px;
            text-align: center;
            background-color: #06DAF9;
            border-radius: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .card:hover {
            background-color: #60F906;
            transform: scale(1.05);
        }

        .card img {
            max-width: 100%;
            max-height: 100%;
            border-radius: 5px;
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
    <title>HomePage</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
</head>
<body>
    <!-- Heading -->
    <h1>Green Cart</h1>
    <!-- Description -->
    <p></p>
    <!-- Logo -->
    <a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo" width="50" height="50"></a>
    <!-- Navigation bar -->
    <ul id="navigation">
        <li class="parts"><a href="Home.jsp">Home</a></li>
        <li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
        <li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
        <li class="parts"><a href="#">About Us</a></li>
    </ul>
    <div class="slider">
        <!-- Add your slider content here -->
    </div>

    <!-- Background image -->
    <img class="page" src="./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg" alt="page one">

    <!-- Card section -->
    <div class="card-container">
        <div class="card" onclick="window.location.href='Home.jsp'">
            <!-- Card image -->
            <img src="./Images/Home.jpg" alt="Home">
            <h2>Home</h2>
            <h3>Welcome to the Green Cart Home Page! Discover a world of sustainable and fresh products. Explore eco-friendly options, seasonal favorites, and exciting promotions. Start your journey towards a greener lifestyle right here.</h3>
        </div>
        <div class="card" onclick="window.location.href='BrowseProducts.jsp'">
            <!-- Card image -->
            <img src="./Images/BrowseProduct.jpg" alt="Browse Products">
             <h2>Browse Products</h2>
            <h3>Dive into our diverse selection of eco-conscious products. From organic produce to environmentally friendly household items, our Browse Products page offers a wide array of sustainable choices. Find quality goods that align with your values and contribute to a healthier planet.</h3>
        </div>
        <div class="card" onclick="window.location.href='feedbacks.jsp'">
            <!-- Card image -->
            <img src="./Images/Feedbacks.jpg" alt="Feedback">
           <h2>Feedback</h2>
                       <h3>Your opinion matters! Share your thoughts and experiences with Green Cart on our Feedback page. Whether it's a suggestion, praise, or constructive criticism, we value your input. Help us improve and tailor our offerings to better serve you and the community.</h3>
        </div>
        <div class="card" onclick="window.location.href='#'">
            <!-- Card image -->
            <img src="./Images/Aboutus.jpg" alt="About Us">
            <h2>About Us</h2>
                        <h3>Learn more about the mission and values of Green Cart on our About Us page. Discover the story behind our commitment to sustainability, the people driving the initiative, and the positive impact we aim to make. Join us in our journey toward a more environmentally conscious future.</h3>
        </div>
        <!-- Add more cards as needed -->
    </div>

    <script>
        // Your existing slider script
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000);
        }
    </script>

</body>
<footer>
    <div>
        <p>&copy; 2023 GREEN Supermarket</p>
        <p>Contact: <a href="mailto:info@greensupermarket.com">info@greensupermarket.com</a></p>
        <p>Address: 123 Green Street, Cityville</p>
    </div>
</footer>
</html>
