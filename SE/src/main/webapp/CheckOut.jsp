<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Out</title>
    <style type="text/css">
        table { border: 0;
        transform: translate(0px,220px);}
        table td { padding: 10px;}

        .feedback-form {
            max-width: 200px;
            max-height: 200px;
            height: 300%;
            width: 300%;
            background-color: #fff;
            padding: 105px;
            box-shadow: 0 0 20px #6759ff;
            border-radius: 15px;
            position: relative;
            transform: translate(0px,-200px);
        }

        .feedback-form h2 {
            text-align: center;
            color: #6759ff;
            transform: translate(0px,-50px);
            font-size: 40px;
        }

        .feedback-form h3 {
            text-align: center;
            color: #101010;
            font-size: 16px;
        }

    </style>
</head>
<body>
<div align="center">
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
                    <input type="submit" value="Checkout" />
                </td>
            </tr>
        </table>
    </form>

    <div class="feedback-form">
        <h2>Check Out</h2>
        <h3>Please click checkout button and go the PAYPAL</h3>
    </div>

</div>
</body>
</html>