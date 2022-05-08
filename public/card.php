<div class = "product-card">
                <div class = "product-image">
                    <img src = "images/18.jpg" class = "product-thumb" alt = "">
                    <button class= "card-btn"> add to cart</button>
                </div>                
                <?php
                $conn = mysqli_connect("localhost", "root", "", "proj1");
                if($conn ->connect_error){
                    die("Connection failed: " . $conn -> connect_error);
                }

                $sql = "SELECT p_name, product_price from products natural join inventory where inventory_id REGEXP p_id ";
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
    echo "</table>";

</div>    