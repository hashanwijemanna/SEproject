<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="./CSS/navigationbarblack.css">
    <link rel="stylesheet" href="./CSS/Slider.css">
    <style>
        body {
            background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #00000;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        .search-bar {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        #searchField {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            border: none;
            outline: none;
            border-radius: 5px;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card img {
            width: 100%;
            max-height: 200px;
            object-fit: cover;
            border-bottom: 1px solid #ddd;
        }

        .card-content {
            padding: 20px;
        }

        .card-content p {
            margin: 0;
        }

        button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #fff;
        }

        .logo {
            width: 50px;
            height: 50px;
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

    <header>
        <h1>Item List</h1>
        <div class="search-bar">
            <input type="text" id="searchField" placeholder="Search by Item Code, Name, etc." />
        </div>
    </header>

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
                    <p style="color: blue;">LKR <%= itemPrice %></p>
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
    const searchField = document.getElementById('searchField');

    searchField.addEventListener('input', function (event) {
        const searchTerm = event.target.value.toLowerCase();

        cardsContainer.querySelectorAll('.card').forEach(function (card) {
            const cardText = card.textContent.toLowerCase();
            const shouldShow = cardText.includes(searchTerm);
            card.style.display = shouldShow ? 'block' : 'none';
        });
    });
</script>
<script src="scripts.js"></script>

</body>
</html>