<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--Font-->
	<link href='https://fonts.googleapis.com/css?family=Dangrek' rel='stylesheet'>
	<!--CSS-->
	<link rel="stylesheet" href="./CSS/home.css">
	<link rel="stylesheet" href="./CSS/navigationbarblack.css">
	<link rel="stylesheet" href="./CSS/Slider.css">
	<title>HomePage-Admin</title>
	<link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">

	<style>
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			border: none;
			outline: none;
			font-family: "Poppins", sans-serif;
		}
		body {
			background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
			background-size: cover;
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			font-family: "Poppins", sans-serif;
			color: #fff;
			margin: 0;
			padding: 0;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			min-height: 100vh;
		}
		h1 {
			font-family: "Poppins", sans-serif;
			margin-bottom: 10px;
			color: #64DD17;
		}

		p {
			max-width: 600px;
			text-align: center;
			margin-bottom: 20px;
		}

		header {
			text-align: center;
			margin-bottom: 20px;
		}

		#description {
			font-size: 18px;
			margin-bottom: 20px;
		}

		.logo {
			width: 50px;
			height: 50px;
			margin-bottom: 20px;
		}

		#navigation {
			list-style-type: none;
			padding: 0;
			margin: 0;
			display: flex;
			gap: 20px;
		}

		#navigation li {
			display: inline;
		}

		#navigation a {
			text-decoration: none;
			color: #fff;
			font-size: 18px;
			transition: color 0.3s;
		}

		#navigation a:hover {
			color: #64DD17;
		}

		.slider {
			width: 100%;
			max-width: 800px;
			margin: 20px auto;
			position: relative;
		}

		.mySlides {
			display: none;
		}

		.mySlides img {
			width: 100%;
		}

		.dot-container {
			text-align: center;
		}

		.dot {
			height: 15px;
			width: 15px;
			margin: 0 5px;
			background-color: #bbb;
			border-radius: 50%;
			display: inline-block;
			transition: background-color 0.6s ease;
		}

		.active {
			background-color: #717171;
		}
	</style>
</head>

<body>
<header>
	<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"></a>
	<!-- Navigation bar -->
	<ul id="navigation">
		<li class="parts"><a href="Admin-Home.jsp">Home</a></li>
		<li class="parts"><a href="Users.jsp">Users</a></li>
		<li class="parts"><a href="Admin-Products.jsp">Products</a></li>
		<li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
	</ul>
</header>
<h1>Green Cart</h1>
<p id="description">Welcome to the Admin Dashboard. Manage users, products, and feedback to ensure a smooth operation.</p>

<div class="slider">
	<!-- Add your slider content here -->
</div>

<script>
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
			slideIndex = 1;
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

</html>