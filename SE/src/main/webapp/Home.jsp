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
	<li class="parts"><a href="#">About Us</a></li>
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
</body>
</html>