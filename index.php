<?php
    include("includes/header.php");
    include("includes/connection.php");
    include("functions/index_process.php");
    include("functions/notification.php");

    display_notification_messages();
    display_notification_messages_sucesses();
?>
            <main>
                
                <section class="py-5 text-center container">
                    <div class="row py-lg-5">
                        <div class="col-lg-6 col-md-8 mx-auto">
                            <h1 class="fw-light">Book Management System</h1>
                            <p class="lead text-body-secondary description">
                             The Book Management System is designed to streamline the management of books, from inventory tracking to categorization and pricing. 
                             It provides an intuitive interface for administrators to easily add, edit, or remove books, while maintaining a secure and organized database. 
                             This system ensures efficient management and access to books for a smooth user experience.
                            </p>
                        </div>
                    </div>
                </section>
                <style>
    .description {
        font-size: 1.2rem;
        font-weight: 500;
        line-height: 1.7;
        color: #555;
        background-color: #f9f9f9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 700px;
        margin: 0 auto;
    }

    .description:hover {
        background-color: #f1f1f1;
        transition: background-color 0.3s ease;
    }
</style>
                <div class="album py-5 bg-body-tertiary">
                    <div class="container">
                        <div class="row">
                            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                                <div class="col-md-4">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="book_detail.php?id=<?php echo $row['book_id']; ?>">
                                        <div class="card shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100" height="500" src="<?php echo $row['book_img']; ?>">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <small class="text-body-secondary"><?php echo $row['book_name']; ?></small>
                                                    <small class="text-body-secondary">$ <?php echo $row['book_price']; ?></small>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                
            </main>

<?php
    include("includes/footer.php");
?>
