<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Product Filter And Search</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <!-- Stylesheet -->
    <link rel="stylesheet" href="./CSS/navigationbarblack.css">
  </head>
  <body>
    <ul id="navigation">
        <li class="parts"><a href="Home.jsp">Home</a></li>
        <li class="parts"><a href="Browse _Products.jsp">Browse Products</a></li>
        <li class="parts"><a href="#">Feedback</a></li>
        <li class="parts"><a href="#">About Us</a></li>
    </ul>
    <div class="wrapper">
      <div id="search-container">
        <input
          type="search"
          id="search-input"
          placeholder="Search product name here.."
        />
        <button id="search">Search</button>
      </div>
      <div id="buttons">
        <button class="button-value" onclick="filterProduct('all')">All</button>
        <button class="button-value" onclick="filterProduct('Home_01')">
          Home & Kitchen
        </button>
        <button class="button-value" onclick="filterProduct('Fash')">
            Fashion
        </button>
        <button class="button-value" onclick="filterProduct('Gro')">
            Groceries
        </button>
        <button class="button-value" onclick="filterProduct('Tech_02')">
            Tech Gadgets
        </button>
        <button class="button-value" onclick="filterProduct('Bea')">
            Beauty
          </button>
      </div>
      <div id="products"></div>
    </div>
    <!-- Script -->
    <script src="script.js"></script>
  </body>
</html>