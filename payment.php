<?php
    require_once('payment/dbclass.php');
    include("includes/header.php");
?>

        <!-- Payment Integration Section -->
        <br>
            <h2 class="text-center">PayPal Payment</h2>
        <br>

        <div style='text-align: center;'>
            <div class='product_wrapper'>
                
                <!-- Display the total price in KZT received from the 'price' query parameter -->
                <h2 class='price'>Total price: <?php echo $_SESSION['client']['order_total_price']; ?>₸</h2>
                <br>

                <form method='POST' action='<?php echo PAYPAL_URL; ?>'>

                    <!-- PayPal business email to collect payments -->
                    <input type='hidden' name='business' value='<?php echo PAYPAL_EMAIL; ?>'>

                    
                    
                </form>
            </div>
        </div>

<?php
    include("includes/footer.php");
?>