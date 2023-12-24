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
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            border: none;
            outline: none;
            font-family: "Poppins", sans-serif;
        }
        body {
            background-color: #f5f8ff;
        }
        .wrapper {
            width: 95%;
            margin: 0 auto;
        }
        #search-container {
            margin: 1em 0;
        }
        #search-container input {
            background-color: transparent;
            width: 40%;
            border-bottom: 2px solid #110f29;
            padding: 1em 0.3em;
        }
        #search-container input:focus {
            border-bottom-color: #6759ff;
        }
        #search-container button {
            padding: 1em 2em;
            margin-left: 1em;
            background-color: #6759ff;
            color: #ffffff;
            border-radius: 5px;
            margin-top: 0.5em;
        }
        .button-value {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
        }
        .active {
            background-color: #6759ff;
            color: #ffffff;
        }
        #products {
            display: grid;
            grid-template-columns: auto auto auto;
            grid-column-gap: 1.5em;
            padding: 2em 0;
        }
        .card {
            background-color: #ffffff;
            max-width: 18em;
            margin-top: 1em;
            padding: 1em;
            border-radius: 5px;
            box-shadow: 1em 2em 2.5em rgba(1, 2, 68, 0.08);
        }
        .image-container {
            text-align: center;
        }
        img {
            max-width: 100%;
            object-fit: contain;
            height: 15em;
        }
        .container {
            padding-top: 1em;
            color: #110f29;
        }
        .container h5 {
            font-weight: 500;
        }
        .hide {
            display: none;
        }
        @media screen and (max-width: 720px) {
            img {
                max-width: 100%;
                object-fit: contain;
                height: 10em;
            }
            .card {
                max-width: 10em;
                margin-top: 1em;
            }
            #products {
                grid-template-columns: auto auto;
                grid-column-gap: 1em;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Navigation bar -->
    <ul id="navigation">
        <li class="parts"><a href="Home.jsp">Home</a></li>
        <li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
        <li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
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
