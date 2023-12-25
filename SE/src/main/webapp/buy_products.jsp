<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<title>TITLE</title>
		<link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
		<link rel="icon" type="image/x-icon" href="../Images/">
		<link rel="stylesheet" href="../CSS/style.css">
		<link rel= "stylesheet" href="../CSS/navigationbarblack.css">
	</head>
	<body>
	<div class="navigation bar">
	<a href="/Home.html"><img class="logo" src="../Images/logoblack.png" alt="logo" width="110" height="27"></a>
		<ul id="navigation">
			<li class="parts"><a href="Home.html">Home</a></li>
			<li class="parts"><a href="buy_products.html">Browse Products</a></li>
			<li class="parts"><a href="form.html">Feedback</a></li>
			<li class="parts"><a href="StudentDetails.html">About Us</a></li>
		</ul>
	</div>
	
	<div class="slideshow_container">

		<div class="mySlides fade">
		  <img src="../Images/wider_1.jpg" alt="wider1">
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
	
	<ul id = "navigation_bar">
		<li><em><a href="#personal_details">Personal Details</a></em></li>
		<li><em><a href="#buy_products">Buy Products</a></em></li>
	</ul>

	<form name="myform">
		<div id = "personal_details">
			<h1>Personal Details</h1>
			<label>Name: </label><br>
				<input type="text" name="firstName" placeholder= "Full Name" id="firstName"><br><br>
			<label for="email">Email: </label><br>
				<input type="email" name="email" placeholder= "Email Address" id="email"><br><br>
			
			<input type="reset" value="Reset form" onclick="reset()">
		</div>
			
		<h1 id= "buy_products" >Buy Products</h1>
		<div class="container_product">
			
			<div class="item" id="Agriculture_Drone">
 
				<div class="image" id="image_1">
					<br>
					<img class="product_img" src="../images/product_1.jpg" alt="image 1" />
				</div>
 
				<div class="description">
					<h2>Agriculture Drone</h2><br/>
					<h3>Material - Carbon Fiber</h3>
					<h3>Operation – Fully Automatic work on Map</h3>
					<h3>Capacity-10L</h3>
					<h3>Four Motor System</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_1" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_1">89000</label>
				</div>
			</div>
		
			<div class="item" id="Straight_Fertilizer">
 
				<div class="image" id="image_2">
					<br>
					<img class="product_img" src="../images/product_2.jpg" alt="image 2" />
				</div>
 
				<div class="description">
					<h2>Straight Fertilizer</h2><br/>
					<h3>Item Weight - 1 Pounds</h3>
					<h3>Item Form - Powder</h3>
					<h3>Item Form - Powder</h3>
					<h3>Item Form - Powder</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_2" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_2">9900</label>
				</div>
			</div>
			
			<div class="item" id="Blended_Fertilizer">
 
				<div class="image" id="image_3">
					<br>
					<img class="product_img" src="../images/product_3.jpg" alt="image 3" />
				</div>
 
				<div class="description">
					<h2>Blended Fertilizer</h2><br/>
					<h3>Item Weight - 1 Pounds</h3>
					<h3>Item Form - Powder</h3>
					<h3>Item Form - Powder</h3>
					<h3>Item Form - Powder</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_3" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_3" >7000</label>
				</div>
			</div>
			
			<div class="item" id="Shade_Nets">
 
				<div class="image" id="image_4">
					<br>
					<img class="product_img" src="../images/product_4.jpg" alt="image 4" />
				</div>
 
				<div class="description">
					<h2>Shade Nets</h2><br/>
					<h3>Size - 6.5' x 10'</h3>
					<h3>Color - Black</h3>
					<h3>Material - Polyethylene</h3>
					<h3>Item Weight - 1.2 Pounds</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_4" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_4">5400</label>
				</div>
			</div>
			
			<div class="item" id="Seading_Trays">
 
				<div class="image" id="image_5">
					<br>
					<img class="product_img" src="../images/product_5.jpg" alt="image 5" />
				</div>
 
				<div class="description">
					<h2>Seading Trays</h2><br/>
					<h3>Material - Plastic</h3>
					<h3>Mounting Type - Floor Standing</h3>
					<h3>Color - Black</h3>
					<h3>Number of Pieces - 125</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_5" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_5">2500</label>
				</div>
			</div>
			
			<div class="item" id="Transplanter">
 
				<div class="image" id="image_6">
					<br>
					<img class="product_img" src="../images/product_6.jpg" alt="image 6" />
				</div>
 
				<div class="description">
					<h2>Transplanter</h2><br/>
					<h3>Capacity - 1 ACRE/HR</h3>
					<h3>SEEDING FEED MECHANISM</h3>
					<h3>Engine Type - Petrol</h3>
					<h3>Type - Walking Type</h3>
				</div>
 
				<div class="quantity">
					<button class="plus_button" type="button" name="button" onclick="increment(this)">+</button>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label id="qty_6" class="qty">0</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<button class="minus_button" type="button" name="button" onclick="decrement(this)">-</button>
					<br><label class="lkr">Price : LKR </label><label class="price" id="price_6" >72000</label>
				</div>
			</div>
		
			<div >
				<label>Total : Rs </label><label id="total">0</label>
			</div>
			<input type="submit" value="Place Order" onclick="placeOrder(this.form)">
		</div>
	</form>
		
	<div >
		<a href="../html/Mathinath.html">
			<img class ="editor_img" alt="editor" src="../images/editor.jpg">
		</a>
		<br>
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
			
			
			function reset() {
				document.getElementById("myform").reset();
			}
			
			function printDiv() {
				var FirstName = document.getElementById("firstName").value;
				var Email = document.getElementById("email").value;
				
				var Qty1 = document.getElementById("qty_1").innerHTML;
				var Qty2 = document.getElementById("qty_2").innerHTML;
				var Qty3 = document.getElementById("qty_3").innerHTML;
				var Qty4 = document.getElementById("qty_4").innerHTML;
				var Qty5 = document.getElementById("qty_5").innerHTML;
				var Qty6 = document.getElementById("qty_6").innerHTML;
				
				var Price1 = document.getElementById("price_1").innerHTML;
				var Price2 = document.getElementById("price_2").innerHTML;
				var Price3 = document.getElementById("price_3").innerHTML;
				var Price4 = document.getElementById("price_4").innerHTML;
				var Price5 = document.getElementById("price_5").innerHTML;
				var Price6 = document.getElementById("price_6").innerHTML;
				
				var TotalAmount = parseInt(document.getElementById("total").textContent,10);
				
				var a = window.open('', '', 'height=500, width=500');
				a.document.write('First Name    : '+FirstName+'<br>');
				a.document.write('Email Address : '+Email+'<br>');
				a.document.write('<br>');
				a.document.write('Invoice Details'+'<br>');
				a.document.write('----------------------------------<br>');
				
				
				if (Qty1 > 0){
					a.document.write('Product    : Agriculture Drone <br>');
					a.document.write('Quantity   : '+Qty1+'<br>');
					a.document.write('Price      : LKR '+Price1+'<br>');
					a.document.write('<br>');
				}
				if (Qty2 > 0){
					a.document.write('Product    : Straight Fertilizer <br>');
					a.document.write('Quantity   : '+Qty2+'<br>');
					a.document.write('Price      : LKR '+Price2+'<br>');
					a.document.write('<br>');
				}
				if (Qty3 > 0){
					a.document.write('Product    : Blended Fertilizer <br>');
					a.document.write('Quantity   : '+Qty3+'<br>');
					a.document.write('Price      : LKR '+Price3+'<br>');
					a.document.write('<br>');
				}
				if (Qty4 > 0){
					a.document.write('Product    : Shade Nets <br>');
					a.document.write('Quantity   : '+Qty4+'<br>');
					a.document.write('Price      : LKR '+Price4+'<br>');
					a.document.write('<br>');
				}
				if (Qty5 > 0){
					a.document.write('Product    : Seading Trays <br>');
					a.document.write('Quantity   : '+Qty5+'<br>');
					a.document.write('Price      : LKR '+Price5+'<br>');
					a.document.write('<br>');
				}
				if (Qty6 > 0){
					a.document.write('Product    : Transplanter <br>');
					a.document.write('Quantity   : '+Qty6+'<br>');
					a.document.write('Price      : LKR '+Price6+'<br>');
					a.document.write('<br>');
				}
				
				a.document.write('Total Bill  : LKR '+TotalAmount);
				a.document.close();
				
			}
			function placeOrder(frm){
				var TotalAmount = parseInt(document.getElementById("total").textContent,10);
				var emailPattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
				var emailaddress = document.getElementById("email").value;
				
				 
				if(frm.firstName.value == "" && frm.email.value == "")
					alert("Hey! You didn't enter anything! ")
				else if(frm.firstName.value == "")
					alert("Hey! You didn't enter anything! in firstName")
				else if(frm.email.value == "")
					alert("Hey! You didn't enter anything! in email")
				else if(!emailPattern.test(emailaddress))
					alert("Invalid Email address")
				else if(TotalAmount == 0)
					alert("Hey! You didn't select any product")
				else {
					printDiv();
				}
				window.onbeforeunload();
			}
			
			function increment(e){
				var qty = parseInt(e.parentElement.querySelector(".qty").textContent,10);
				var count = qty+1;
				e.parentElement.querySelector(".qty").textContent=count;
				
				var price = parseInt(e.parentElement.querySelector(".price").textContent,10);
				var total = parseInt(document.getElementById("total").textContent,10);
				BillValue = total+price;
				document.getElementById("total").innerHTML= BillValue;
			}

			function decrement(e){
				var qty = parseInt(e.parentElement.querySelector(".qty").textContent,10);
				
				if (qty > 0) {
					var count = qty-1;
					e.parentElement.querySelector(".qty").textContent=count;
					
					var price = parseInt(e.parentElement.querySelector(".price").textContent,10);
					var total = parseInt(document.getElementById("total").textContent,10);
					BillValue = total-price;
					document.getElementById("total").innerHTML= BillValue;
				}
			
			}
			
				
			</script>
	</body>
</html>