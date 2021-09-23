<?php

$insert = false;
if(isset($_POST['name'])){
    $server = "localhost";
    $username = "root";
    $password = "";
    $con = mysqli_connect($server, $username, $password);
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "connection Success<br>";
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $desc = $_POST['desc'];
    $sql = "INSERT INTO `contact_us`.`feed` (`name`,  `email`, `phone`, `feedback`, `date`) VALUES ('$name', '$email', '$phone', '$desc', current_timestamp());";
    // echo "Here1<br>";
    
    if($con->query($sql) == true){
        $insert = true;
        // echo "Successfully inserted<br>";
    }
    else{
        echo "We having some problem mate<br>";
    }
    // echo "Here2<br>";
    $con->close();
}
?>





<body>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Feedback Form</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto|Sriracha&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
      
    </head>

    <body>
   <?php $IPATH = $_SERVER["DOCUMENT_ROOT"]."/TIE/"; 
   include($IPATH."header.html");?>
    
    <br><br>
        <br>

        <div class="contain r">
            <h1 style="text-align : center;" >Contact us</h3>
                <p class="p">We would like to hear your feedback.</p>
                <?php
        if($insert == true){
        echo "<p class='submitMsg'>Thanks for submitting your form</p>";
        }
    ?>
                    <form action="contact.php" method="post">
                        <input type="text" name="name" id="name" placeholder="Enter your name">
                        <!-- <input type="text" name="age" id="age" placeholder="Enter your Age"> -->
                        <!-- <input type="text" name="gender" id="gender" placeholder="Enter your gender"> -->
                        <input type="email" name="email" id="email" placeholder="Enter your email">
                        <input type="phone" name="phone" id="phone" placeholder="Enter your phone">
                        <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter any other information here"></textarea>
                        <button class="btn">Submit</button>
                    </form>
        </div>
        <script src="contact.js"></script>
        <br><br><br>
        <?php $IPATH = $_SERVER["DOCUMENT_ROOT"]."/TIE/"; 
   include($IPATH."footer.html");?>
    </body>

    </html>
</body>

</html>


