<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech: Create a Account</title>

    <link rel = "stylesheet" href="css/signup.css">

</head>
<body>
    
    <img src = "images/loader.gif" class = "loader" alt="">

    <div class = "alert-box">
        <img src = "images/error.png" class = "alert-img" alt="">
        <p class = "alert-msg">part of the entered data is invalid</p>
    </div>


    <div class="container">
                        <img src = "images/icon2.jpg" class = "logo" alt="">
                        <div>

                            <!--use this to input into the sql-->
                            <input type="first_name" autocomplete="off" id = "first_name" placeholder="first name">
                            <input type="last_name" autocomplete="off" id = "last_name" placeholder="last name">
                            <input type="email" autocomplete="off" id = "email" placeholder="email">
                            <input type = "phone" autocomplete="off" id = "phone" placeholder="phone number">
                            <input type = "address" autocomplete="off" id = "address" placeholder="address">




                            <button class = "submit-btn"> Create Account</button>

                            <a href="index.php" class = "skip"> skip</a>
                        </div>
                        <a href="login.php" class = "link"> already have an account? Log in here</a>
                    
                        <?php 
                        require('connection.php');
                        //when form submitted insert values into database
                        if(isset($_REQUEST['first_name'])) {
                            $first_name = stripslashes($_REQUEST['first_name']);
                            $first_name = mysqli_real_escape_string($link, $first_name);
                            $last_name = stripslashes($_REQUEST['last_name']);
                            $last_name = mysqli_real_escape_string($link, $last_name);
                            $Email = stripslashes($_REQUEST['Email']);
                            $Email = mysqli_real_escape_stringipslashes($link, $Email);
                            $Phone = stripslashes($_REQUEST['Phone']);
                            $Phone = mysqli_real_escape_stringipslashes($link,$Phone);
                            $Address = stripslashes($_REQUEST['Address']);
                            $Address = mysqli_real_escape_stringipslashes($link,$Address);

                            $newID = stripslashes($_REQUEST['c_id']);
                            $mostRecentID = "SELECT 'c_id' from 'customer' order by DESC limit 1";
                            $newID = $mostRecentID+1;

                            $query = "INSERT into 'customer' (c_id, first_name, last_name, Email, Phone, Address) 
                                    VALUES ('$newID', '$first_name', '$last_name', '$Email', '$Phone', '$Address')";
                            $result = mysqli_query($link, $query);
                        
                        }
                ?>
                    
                    
                    
                    
                    </div>



 

                
                
                




            

    <script src="js/forms.js"></script>
    <script src = "js/token.js/"></script>

</body>
</html>