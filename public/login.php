<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techbuy: Login</title>

    <link rel="stylesheet" href="css/signup.css">

</head>
<body>
    <img src = "images/loader.gif" class = "loader" alt="">


    <div class="container">
        <img src = "images/icon2.jpg" class = "logo" alt="">
        <div>
            <!--use this to input into the sql-->
            <input type="email" autocomplete="off" id = "email" placeholder="email" name = "email/">

            <?php 
                define('DB_SERVER', 'localhost');
                define('DB_USERNAME', 'root');
                define('DB_PASSWORD', '');
                define('DB_NAME', 'proj1');

                $link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

                if($link === false) {
                    die("Error connecting to database".mysqli_connect_error());

                }
                $Email = "";   
                $email_err = "";

                if($_SERVER["REQUEST_METHOD"] == "POST"){


                    if(empty(trim($_POST["Email"]))){ 
                        $email_err = "Please enter a valid email address";
                    }else if(!preg_match('/^[a-zA-Z0-9_]+$/', trim($_POST["Email"]))){
                        $email_err = "email can only contain letters numbers and underscores";
                    }else{
                        $sql = "SELECT Email from customer where email = ?";

                        if($stmt = mysqli_prepare($link, $sql)){
                            mysqli_stmt_bind_param($stmt, "s", $param_email);

                            $param_email = trim($_POST["Email"]);

                            if(mysqli_stmt_execute($stmt)){
                                mysqli_stmt_store_result($stmt);

                                if(mysqli_stmt_num_rows($stmt) == 1)
                                {
                                    $email_err = "this email has been used previously";
                                }else{
                                    $Email = trim($_POST["Email"]);
                                }
                            }else{
                                echo "an error occured try again later";
                            }
                            mysqli_stmt_close($stmt);


                        }
                    }


                }


            
            ?>

            <button class = "submit-btn"> Login</button>
        </div>
        <a href="signup.php" class = "link"> don't have an account yet? create one now!</a>
    </div>
<!--   <script src="js/forms.js"></script>
    <script src = "js/token.js/"></script> -->
    <script src = "js/login.js"></script>
</body>
</html>


