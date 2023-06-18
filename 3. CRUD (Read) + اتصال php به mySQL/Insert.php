<?php
$id = $_POST["id"];
$proname = $_POST["proname"];
$brand = $_POST["brand"];
$price = $_POST["price"];
$status = $_POST["status"];

$connection = mysqli_connect("localhost","root","","product_db") or die("Connection failed!");
$sql = "INSERT INTO product(nameproduct,brand,price) VALUES('$proname','$brand','$price')";
$result = mysqli_query($connection, $sql) or die("Query failed!");
mysqli_close($connection);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>product table</title>
</head>
<body>
    <table class="container">
        <tr>
            <th>id</th>
            <th>name product</th>
            <th>brand</th>
            <th>price</th>
            <th>status</th>
            <th></th>
        </tr>
        <tr>
            <td><?php echo($id) ?></td>
            <td><?php echo($proname) ?></td>
            <td><?php echo($brand) ?></td>
            <td><?php echo($price) ?></td>
            <td><?php echo($status) ?></td>
            <td><form action=""><input type="submit" value="حذف" id="btnDel"><form></td>
        </tr>
    </table>
</body>
</html>
