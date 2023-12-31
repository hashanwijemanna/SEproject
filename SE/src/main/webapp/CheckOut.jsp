<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Out</title>
    <style type="text/css">
        table { border: 0;}
        table td { padding: 10px;
        color: transparent;}
        .feedback-form {
            max-width: 400px;
            max-height: 500px;
            height: 500%;
            width: 500%;
            background-color: #fff;
            padding: 105px;
            box-shadow: 0 0 20px #6759ff;
            border-radius: 15px;
            position: relative;
            transform: translate(680px,-350px);
        }

        .feedback-form h2 {
            text-align: center;
            color: #6759ff;
            transform: translate(0px,-50px);
            font-size: 60px;
        }

        .feedback-form h3 {
            text-align: center;
            color: #101010;
        }

        .form-group {
            margin-bottom: 20px;
            border-bottom: #6759ff;
            background-color: transparent;
            width: 100%;
            border-bottom: 2px solid #6759ff;
            padding: 1em 0.3em;
        }

    </style>
</head>
<body>
<div align="center">
    <h1>Check Out</h1>
    <br/>
    <form action="authorize_payment" method="post">
        <table>
            <tr>
                <td>Product/Service:</td>
                <td><input type="text" name="product" value="Next iPhone" /></td>
            </tr>
            <tr>
                <td>Sub Total:</td>
                <td><input type="text" name="subtotal" value="100" /></td>
            </tr>
            <tr>
                <td>Shipping:</td>
                <td><input type="text" name="shipping" value="10" /></td>
            </tr>
            <tr>
                <td>Tax:</td>
                <td><input type="text" name="tax" value="10" /></td>
            </tr>
            <tr>
                <td>Total Amount:</td>
                <td><input type="text" name="total" value="120" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Checkout" style="height: 50px; width: 100px; transform: translate(0px,150px)"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div class="feedback-form">
    <h2>Check Out</h2>
    <h3>Please click checkout button and go to PAYPAL</h3>

    </form>
</div>
</body>
</html>
