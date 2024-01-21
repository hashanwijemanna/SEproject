<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="./CSS/navigationbar.css">
    <link rel="stylesheet" href="./CSS/Slider.css">
    <link rel="stylesheet" href="./CSS/Searchbar.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        body {
            background-image: url('./Images/b2.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            font-family: "Poppins", sans-serif;
            margin: 0;
            padding: 0;
            color: #00000;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .container {
            max-width: 1500px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        header {
            text-align: center;
            font-size: 25px;
            margin-bottom: 30px;
            transform: translate(-40%);
        }

        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .card {
            flex: 0 0 calc(30% - 20px);
            margin: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            max-height: 280px;
            object-fit: cover;
            border-bottom: 1px solid #ddd;
        }

        .card-content {
            padding: 20px;
            text-align: center;
        }

        .card-content h2 {
            margin: 10px 0;
            color: #333;
        }

        .card-content p {
            margin: 0;
            color: #666;
        }

        .card-content p.price {
            color: blue;
            font-weight: bold;
        }

        button {
            transition: background-color 0.3s;
            text-decoration: none;
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor:pointer;
        }

        button:hover {
            background-color: #6759ff;
        }

        .logo {
            width: 50px;
            height: 50px;
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            transform: translate(65%);
        }

        ul li {
            display: inline;
            margin-right: 20px;
        }

        ul li a {
            text-decoration: none;
            color: #80ecd7;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s;

        }

        ul li a:hover {
            color: #64DD17;
        }


    </style>
</head>
<body>

<div class="container">
    <a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"></a>
    <!-- Navigation bar -->
    <ul>
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="BrowseProducts.jsp">Browse Products</a></li>
        <li><a href="feedbacks.jsp">Feedback</a></li>
        <li><a href="Aboutus.jsp">About Us</a></li>
    </ul>

    <header>
        <h1>Item List</h1>
    </header>
    <div class="wrapper">
        <div id="search-container">
            <input
                    type="search"
                    id="search-input"
                    placeholder="Search product name here.."
            />
            <button id="search">Search</button>
        </div>

        <div class="cards-container">
            <%
                try {
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM products");

                    while (rs.next()) {
                        String itemCode = rs.getString("item_id");
                        String itemName = rs.getString("name");
                        String itemImage = rs.getString("image");
                        String itemDescription = rs.getString("description");
                        String itemPrice = rs.getString("price");
            %>
            <div class="card">
                <img src="<%= itemImage %>" alt="<%= itemName %> Image">
                <div class="card-content">
                    <h2><%= itemName %></h2>
                    <p><%= itemDescription %></p>
                    <p class="price">$ <%= itemPrice %></p>
                    <button>
                        <a href="Order.jsp?itemCode=<%= itemCode %>">Order</a>
                    </button>
                </div>
            </div>
            <%
                    }
                    rs.close();
                    stmt.close();
                } catch (SQLException se) {
                    se.printStackTrace();
                }
            %>
        </div>
    </div>

    <script>
        const cardsContainer = document.querySelector('.cards-container');
        const searchInput = document.getElementById('search-input');
        const searchButton = document.getElementById('search');

        searchButton.addEventListener('click', function () {
            const searchTerm = searchInput.value.trim().toLowerCase();

            cardsContainer.querySelectorAll('.card').forEach(function (card) {
                const cardText = card.textContent.toLowerCase();
                const shouldShow = cardText.includes(searchTerm);
                card.style.display = shouldShow ? 'block' : 'none';
            });
        });
    </script>
</body>

</html>