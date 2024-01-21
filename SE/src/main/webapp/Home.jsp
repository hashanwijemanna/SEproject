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
	<title>HomePage</title>
	<link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">

	<style>

		.card-panel {
			display: flex;
			justify-content: space-around;
			align-items: center;
			margin-top: 50px;
		}

		.card {
			position: relative;
			width: 400px;
			height: 400px;
			background-color: #80ecd7;
			border-radius: 10px;
			text-align: center;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
			overflow: hidden;
			transition: transform 0.3s ease;
			margin: 20px;
			cursor: pointer;
		}

		.card:hover {
			transform: scale(1.05);
			box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
		}

		.card::before {
			content: '';
			position: absolute;
			top: -100%;
			left: -100%;
			width: 100%;
			height: 100%;
			background: linear-gradient(45deg, rgba(255, 255, 255, 0), rgb(122, 114, 246));
			transition: top 0.3s, left 0.3s;
			z-index: 1;
		}

		.card:hover::before {
			top: 0;
			left: 0;
		}

		.card h2 {
			font-size: 20px;
			margin-top: 20px;
			color: #333;
			z-index: 2;
			position: relative;
		}

		.card h4 {
			font-size: 14px;
			color: #777;
			margin: 10px;
			z-index: 2;
			position: relative;
		}

		.card img {
			width: 210px;
			height: 210px;
			margin-top: 20px;
			object-fit: cover;
			z-index: 2;
			position: relative;
		}

		.card:hover img {
			transform: rotate(360deg);
		}
	</style>
</head>
<body>
<!--Heading-->
<h1>Green Cart</h1>
</div>
<!--Description-->
<p></p>
<!--Logo-->
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
<!--Navigation bar-->
<ul id="navigation">
	<li class="parts"><a href="Home.jsp">Home</a></li>
	<li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
	<li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
	<li class="parts"><a href="Aboutus.jsp">About Us</a></li>
</ul>
<div class="slider">

</div>

<!--Background image-->
<img class="page" src="./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg" alt="page one" >
<script>
	let slideIndex = 0;
	showSlides();

	function showSlides()
	{
		let i;
		let slides = document.getElementsByClassName("mySlides");
		let dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {slideIndex = 1}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex-1].style.display = "block";
		dots[slideIndex-1].className += " active";
		setTimeout(showSlides, 4000);
	}
</script>
<!-- Card panel -->
<div class="card-panel">
	<a href="Home.jsp" class="card">
		<img src="./Images/Home.jpg" alt="Home">
		<h2>Home</h2>
		<h4>This section is the landing page where you can explore various offerings, promotions, and news related to GREEN Supermarket. It provides an overview of the supermarket's key highlights and essential information.</h4>
	</a>
	<a href="BrowseProducts.jsp" class="card">
		<img src="./Images/BrowseProduct.jpg" alt="Products">
		<h2>Browse Products</h2>
		<h4>Here, you can access a wide array of products available at GREEN Supermarket. From groceries to household items, this section allows you to explore and search for specific products, view details, and add items to your cart for purchase.</h4>
	</a>
	<a href="feedbacks.jsp" class="card">
		<img src="./Images/Feedbacks.jpg" alt="Feedback">
		<h2>Feedback</h2>
		<h4>Share your thoughts and experiences with GREEN Supermarket. This section welcomes your feedback, reviews, and suggestions. Your input helps us enhance our services and better meet your needs.</h4>
	</a>
	<a href="Aboutus.jsp" class="card">
		<img src="./Images/Aboutus.jpg" alt="About Us">
		<h2>About Us</h2>
		<h4> Get to know more about GREEN Supermarket. This section provides insights into our history, values, mission, and vision. Learn about our commitment to quality, sustainability practices, and our dedicated team behind the scenes.</h4>
	</a>
</div>
</body>



</html>