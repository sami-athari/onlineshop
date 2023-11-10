<!-- New Phones -->
<?php
shuffle($product_shuffle);

// request method post
if($_SERVER['REQUEST_METHOD'] == "POST"){
    if (isset($_POST['new_phones_submit'])){
        // call method addToCart
        $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
    }
}
?>

        
    </div>
</section>
