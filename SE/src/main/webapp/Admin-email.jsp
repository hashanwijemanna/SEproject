<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emails-Admin</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="stylesheet" href="./CSS/home.css">
    		<link rel="stylesheet" href="./CSS/navigationbarblack.css">
    <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
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
                width: 60%;
                margin: 0 auto;
            }
            #search-container {
                margin: 1em 0;
                transform: translate(-35%, 30%);
            }
            #search-container input {
                background-color: transparent;
                width: 110%;
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
                transform: translate(175%, -110%);
            }
            .search-btn-value {
                border: 2px solid #6759ff;
                padding: 1em 2.2em;
                border-radius: 3em;
                background-color: transparent;
                color: #6759ff;
                cursor: pointer;
            }
            body {
                background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
                background-size: cover;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                font-family: Arial, sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0;
                padding: 0;
                color: #00000;
            }

            header {
                text-align: center;
                display: flex;
                flex-direction: column;
                align-items: flex-start;
            }

            .search-bar {
                width: 500px;
                font-size: 24px;
                border: 2px solid #ddd;
                border-radius: 5px;
                margin-bottom: 20px;
                padding: 10px;
            }

            #searchField {
                width: 100%;
                border: none;
                outline: none;
                font-size: 18px;
                opacity: 0.8;
                border-radius: 5px;
                padding: 8px;
            }

            table {
                    border-collapse: collapse;
                    width: 80%;
                    margin: 20px;
                    background-color: #fff;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    border-radius: 10px;
                    overflow: hidden;
                    margin-bottom: 50px;
                }

                th, td {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 15px;
                }

                th {
                    background-color: #6759ff;
                    color: #ffffff;
                }

                tbody tr:hover {
                    background-color: #f5f5f5;
                }

                button {
                    padding: 12px 25px;
                    background-color: #6759ff;
                    color: #ffffff;
                    border: none;
                    border-radius: 5px;
                    cursor: pointer;
                    transition: background-color 0.3s ease-in-out;
                }

                button:hover {
                    background-color: #4529a0;
                }

                .container {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }

                .form-container {
                    background-color: rgba(255, 255, 255, 0.8);
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    margin-bottom: 50px;
                    width: 60%;
                }

                .form-container h2 {
                    text-align: center;
                    color: #110f29;
                    margin-bottom: 20px;
                }

                .inputBox {
                    margin-bottom: 20px;
                }

                .inputBox span {
                    display: block;
                    margin-bottom: 5px;
                    color: #6759ff;
                    font-weight: bold;
                }

                .inputBox input {
                    width: 100%;
                    padding: 12px;
                    border: 1px

                 input[type="checkbox"] {
                        appearance: none;
                        width: 20px;
                        height: 20px;
                        border: 2px solid #6759ff;
                        border-radius: 5px;
                        outline: none;
                        cursor: pointer;
                        vertical-align: middle;
                    }

                    input[type="checkbox"]:checked {
                        background-color: #6759ff;
                        border: 2px solid #6759ff;
                    }

                    input[type="submit"] {
                        padding: 15px 30px;
                        background-color: #6759ff;
                        color: #ffffff;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        transition: background-color 0.3s ease-in-out;
                    }

                    input[type="submit"]:hover {
                        background-color: #4529a0;
                    }
        </style>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const table = document.querySelector('table tbody');
            const searchField = document.getElementById('searchField');

            searchField.addEventListener('input', function (event) {
                const searchTerm = event.target.value.toLowerCase();

                table.querySelectorAll('tr').forEach(function (row) {
                    const rowText = row.textContent.toLowerCase();
                    const shouldShow = rowText.includes(searchTerm);
                    row.style.display = shouldShow ? 'table-row' : 'none';
                });
            });
        });
    </script>


</head>
<body>
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
		<!--Navigation bar-->
		<ul id="navigation">
        			<li class="parts"><a href="Admin-Home.jsp">Home</a></li>
        			<li class="parts"><a href="Users.jsp">Users</a></li>
        			<li class="parts"><a href="Admin-Products.jsp">Products</a></li>
			        <li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
			        <li class="parts"><a href="Admin-email.jsp">Emails</a></li>
        		</ul>
<div class="container">
<br><br><br><br><br>

<form action="EmailServlet" method="POST">
            <h2>Send Email</h2><br><br>
            <input type="text" class="search-bar" id="searchField" placeholder="Search..."><br><br><br>

            <div class="inputBox" style="background-color: transparent;">
            <span>Subject</span>
                <input type="text" class="subject" id="subject" name="subject" required>
                <i></i>
            </div>
            <div class="inputBox">
            <span>Enter Message</span>
            <tr>
                <td colspan="5"><input type="text" class="message" id="message" name="message" required></td>
                <i></i>
            </tr>
            </div>
            <b><center><button><input type="submit" style="background-color: transparent; font-size: 16px; color:#fff;" value="Send Email"></button></center></b>

            <table>
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Select</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Statement stmt = null;
                                    ResultSet rs = null;

                                    try {
                                        conn = DriverManager.getConnection(DB_URL, USER, PASS);
                                        stmt = conn.createStatement();
                                        String sql = "SELECT user_id, username, email FROM users";
                                        rs = stmt.executeQuery(sql);

                                        while (rs.next()) {
                                            String userId = rs.getString("user_id");
                                            String username = rs.getString("username");
                                            String email = rs.getString("email");

                                            out.println("<tr>");
                                            out.println("<td>" + userId + "</td>");
                                            out.println("<td>" + username + "</td>");
                                            out.println("<td>" + email + "</td>");
                                            out.println("<td><input type='checkbox' name='selectedEmails' value='"+ email + "'></td>");
                                            out.println("</tr>");
                                        }
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    } finally {
                                        try {
                                            if (rs != null) rs.close();
                                            if (stmt != null) stmt.close();
                                            if (conn != null) conn.close();
                                        } catch (SQLException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                %>
                            </tbody>
                        </table>

        </form>

</div>


</body>
</html>
