
document.addEventListener('DOMContentLoaded', function () {
    const orderButtons = document.querySelectorAll('.order-button');

    orderButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            // Get the item code from the data attribute
            const itemCode = button.getAttribute('data-item-code');

            // Redirect to the ItemDetails.jsp page with the item code as a parameter
            window.location.href = 'ItemDetails.jsp?itemCode=' + itemCode;
        });
    });
});
