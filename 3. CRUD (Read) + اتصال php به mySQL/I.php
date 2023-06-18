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
    <div class="container">
        <form action="insert.php" method="post">
            <input placeholder="id (auto increment)" name="id" readonly>
            <input type="text" placeholder="product name" name="proname">
            <input type="text" placeholder="brand" name="brand">
            <input type="text" placeholder="price" name="price">
            <input placeholder="status (active)" name="status" readonly>
            <input type="submit" value="درج" id="btnInsert">
            <input type="submit" value="دریافت همه محصولات" id="btnAll">
        </form>
    </div>
    
</body>
</html>
