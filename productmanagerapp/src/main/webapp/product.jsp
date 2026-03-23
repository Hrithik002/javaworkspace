<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="shop" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <h1>Our Products</h1>

    <!-- Product 1 WITH discount (should show SALE!) -->
    <shop:productCard
        productId="101"
        name="Iphone 17"
        price="500"
        discount="25"
        imageUrl="images/phone.jpg"
        description="Latest smartphone with powerful features."
    />

    <!-- Product 2 NO discount -->
    <shop:productCard
        productId="102"
        name=" Apple Headphones"
        price="120"
        imageUrl="images/headphones.jpg"
        description="Crystal clear sound."
    />

    <!-- Product 3 showAddToCart = false -->
    <shop:productCard
        productId="103"
        name="Macbook"
        price="1500"
        discount="10"
        imageUrl="images/laptop.jpg"
        description="Professional performance."
        showAddToCart="true"
    />

</body>
</html>