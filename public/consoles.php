<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset ="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> WebTech </title>

    <link rel="stylesheet" href="css/consoles.css">

</head>

<body> 

    <nav class="navbar"> </nav>
<!--main banner-->
    <section class = "category-container">
        <a href="consoles.html" class = "categories">
            <img src = "images/consoleHero.jpg" alt = "">
            <p class = "category-title">Console <br> Systems</p>
        </a>

    </section>

    <!-- cards container-->
    <section class = "product">
        <h2 class = "product-category">Consoles</h2>
        <button class = "pre-btn"><img src = "images/arrow.jpg" alt = ""></button>
        <button class = "nxt-btn"><img src = "images/arrow.jpg" alt = ""></button>

        <div class = "product-container">
            <div class = "product-card">
                <div class = "product-image">
                    <img src = "images/xbox.jpg" class = "product-thumb" alt = "">
                    <button class= "card-btn"> add to cart</button>
                </div>                
                <?php
                $conn = mysqli_connect("localhost", "root", "", "proj1");
                if($conn ->connect_error){
                    die("Connection failed: " . $conn -> connect_error);
                }

                $sql = "SELECT p_name, product_price from products natural join inventory where inventory_id = p_id  and  p_name REGEXP 'Xbox'";
                $result = $conn->query($sql);

                if($result->num_rows>0){
                    while($row = $result->fetch_assoc()){
                        echo "<div><h2>". $row["p_name"] ."</h2><p>". $row["product_price"] ."</p><span>"."</span></div>";
                    }
                }
                else{
                echo "0 result";
                }

                ?>
            </div>     
            <div class = "product-card">
                <div class = "product-image">
                    <img src = "images/gameboy.jpg" class = "product-thumb" alt = "">
                    <button class= "card-btn"> add to cart</button>
                </div>

                <?php
                $conn = mysqli_connect("localhost", "root", "", "proj1");
                if($conn ->connect_error){
                    die("Connection failed: " . $conn -> connect_error);
                }

                $sql = "SELECT p_name, product_price from products natural join inventory where inventory_id = p_id  and  p_name REGEXP 'Gameboy'";
                $result = $conn->query($sql);

                if($result->num_rows>0){
                    while($row = $result->fetch_assoc()){
                        echo "<div><h2>". $row["p_name"] ."</h2><p>". $row["product_price"] ."</p><span>"."</span></div>";
                    }
                }
                else{
                echo "0 result";
                }

                ?>


            </div>     

        </div>  
    </section>



        
    <!-- Footer -->
    <footer> </footer>


    <script src= "js/nav.js"></script> 
    <script src = "js/footer.js"></script>
    <script src= "js/consoles.js"></script> 




</body>




</html>
