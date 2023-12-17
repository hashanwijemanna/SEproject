<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<title>TITLE</title>
		<link rel="icon" type="image/x-icon" href="../Images/favicon.ico">
		<link rel="stylesheet" href="../CSS/test.css">
	</head>
	<body>
	<div class="slideshow_container">

		<div class="mySlides fade">
		  <img src="../Images/agriculture-2.jpg" alt="wider1">
		  <div class="text_slide">Food costs have risen dramatically</div>
		</div>

		<div class="mySlides fade">
		  <img src="../Images/wider_2.jpg" alt="wider2">
		  <div class="text_slide">A good farmer is nothing more nor less than a handy man with a sense of humus</div>
		</div>

		<div class="mySlides fade">
		  <img src="../Images/wider_3.jpg" alt="wider3">
		  <div class="text_slide">Necessary farming tools and equipment for a farmer</div>
		</div>
	</div>
	<br>
	
	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span> 
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