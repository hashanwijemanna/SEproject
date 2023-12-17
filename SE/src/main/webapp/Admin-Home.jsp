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

		<style>
        		body {
        		background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
        		background-size: cover;
                      background-attachment: fixed;
                      background-position: center;
                      background-repeat: no-repeat;
                      font-family: Arial, sans-serif;
                      color: #fff;
                      display: flex;
                      align-items: center;
                      justify-content: center;
                      height: 100vh;
                      margin: 0;
                            padding: 0;
        		}
        		</style>
	</head>
	<body>
		<!--Description-->
		<p></p>
		<!--Logo-->
		<a href="Home.html"><img class="logo" src="./Images/LogoAB.jpg" alt="logo"  width="50" height="50"></a>
		<!--Navigation bar-->
		<ul id="navigation">
			<li class="parts"><a href="Admin-Home.jsp">Home</a></li>
			<li class="parts"><a href="Users.jsp">Users</a></li>
		</ul>
		<div class="slider">

        </div>

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