<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--Font-->
	<link href='https://fonts.googleapis.com/css?family=Dangrek' rel='stylesheet'>
	<!--CSS-->
	<link rel="stylesheet" href="./CSS/home.css">
	<link rel="stylesheet" href="./CSS/navigationbar.css">
	<link rel="stylesheet" href="./CSS/Slider.css">
	<style>
		body {
			font-family: 'Dangrek', sans-serif;
			margin: 0;
			padding: 0;
			color: #333;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}

		h1 {
			margin-bottom: 10px;
			color: #64DD17;
		}

		p {
			max-width: 600px;
			text-align: center;
			margin-bottom: 20px;
		}

		.logo {
			width: 50px;
			height: 50px;
			margin-bottom: 20px;
			border-radius: 50%;
			border: 2px solid #64DD17;
			transition: transform 0.3s, box-shadow 0.3s;
		}

		.logo:hover {
			transform: scale(1.1);
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		}

		#navigation {
			background-color: #64DD17;
		}

		#navigation li a {
			color: #fff;
		}

		.slider {
			/* Your existing slider styles */
		}

		.page {
			width: 100%;
			max-width: 1200px;
			height: auto;
			margin-top: 20px;
		}
	</style>
</head>

<body>
<div class="container">
	<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"></a>
	<!-- Navigation bar -->
	<ul id="navigation">
		<li class="parts"><a href="Home.jsp">Home</a></li>
		<li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
		<li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
		<li class="parts"><a href="#">About Us</a></li>
	</ul>

	<h1>Green Cart</h1>
	<p>Welcome to Green Cart, your one-stop shop for fresh and organic products. Explore our range of products and enjoy a healthier lifestyle.</p>

	<div class="slider">
		<!-- Your existing slider content -->
	</div>

	<!-- Background image -->
	<img class="page" src="./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg" alt="page one">
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

</html>