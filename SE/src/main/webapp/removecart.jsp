<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- Retrieve the cart items from the session --%>
<% List<String> cart = (List<String>) session.getAttribute("cart");

  // Get the item code to be removed from the request parameter
  String itemToRemove = request.getParameter("itemCode");

  if (cart != null && itemToRemove != null && !itemToRemove.isEmpty()) {
    cart.remove(itemToRemove); // Remove the item from the cart
  }
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Remove from Cart</title>
  <!-- Add any necessary styles or links -->
</head>

<body>
<script>
  // Redirect back to the ViewCart.jsp after removing an item
  window.location.replace("viewcart.jsp");
</script>
</body>

</html>

