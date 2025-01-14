<?php
    require "db.php";
?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cooleey</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    
    <link rel="stylesheet" href="style.css">
</head>
<body class="container-fluid">
    <div class="row mb-3" style="height: 20px; background-color: rgb(51, 51, 204);"></div>
    <div class="row align-items-center justify-content-between text-center">
        <div class="col-sm-2">
            <form action="search.php" method="get" class="input-group input-group-sm">
                <input type="search" class="form-control" name="search" placeholder="Products">
                <button type="submit" class="input-group-text" href="#" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                    </svg>
                </button>
            </form>
        </div>
        <div class="col-sm-8">
                <a href="index.php"><img class="img-fluid" src="Img/logo.png" alt="" style="width: 35%;"></a>
        </div>
        <div class="col-sm-2">
            <form action="#" class="d-flex">
                <label for="lenguage"></label>
                <select id="lenguage" class="form-select">
                    <option value="en">En</option>
                    <option value="ch">Ch</option>
                    <option value="de">De</option>
                </select>
            </form>
        </div>
    </div>
    <nav class="navbar sticky-top navbar-expand-sm" style="background-color: white;">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse text-center justify-content-center align-items-center fs-5" style="height: 75px;" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="history.html">Our History</a></li>
                <li class="nav-item"><a class="nav-link" href="philosophy.html">Our Philosophy</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="productsDropdown" data-bs-toggle="dropdown" aria-expanded="false">Products</a>
                    <ul class="dropdown-menu" aria-labelledby="productsDropdown">
                        <li><a class="dropdown-item" href="highEnd.php">High-end Efficacy</a></li>
                        <li><a class="dropdown-item" href="dailyHome.php">Daily Home Use</a></li>
                        <li><a class="dropdown-item" href="medicalProducts.php">Beauty Salon Products</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="servicesDropdown" data-bs-toggle="dropdown" aria-expanded="false">Services</a>
                    <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
                        <li><a class="dropdown-item" href="facialTreat.html">Facial Treatment</a></li>
                        <li><a class="dropdown-item" href="eyeCare.html">Eye-care</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="contacts.html">Contacts</a></li>
            </ul>
        </div>
    </nav>
    
    <div class="container-fluid mb-5 mt-2" style="max-width: 85%;">
        <div class="container-fuid" >
            <h4 class="d-flex align-items-center justify-content-center" style="background: rgb(224, 224, 235); height: 50px">"Check out our High-end products, thinked to have long lasting beneficial effects for years on your skin"</h4>
        </div>

        <?php
            // Query per recuperare i prodotti
            $products_query = "SELECT ProductName, FileName, ProductID FROM Products WHERE Category = 'High-end Efficacy'";
            $result = $conn->query($products_query);

            // Verifica se ci sono prodotti
            if (!$result || $result->num_rows === 0) {
                echo "<div class='alert alert-info'>No products found.</div>";
                return;
            }

            // Container con padding responsive
            echo "<div class='container-fluid px-4 py-5'>";
            echo "<div class='row g-4'>"; // g-4 aggiunge gap tra le cards

            // Itera attraverso i prodotti
            while ($product = $result->fetch_assoc()) {
                echo "
                <div class='col-12 col-sm-3'>
                    <div class='shadow-sm border-0 h-100 d-flex flex-column'>
                        <div class='d-flex justify-content-center align-items-center h-100'
                            style='max-height: 300px;'>
                            <a href='product.php?id={$product['ProductID']}'>
                                <img src='Img/Products/{$product['FileName']}'
                                    class='img-fluid p-2'
                                    alt='{$product['ProductName']}'
                                    style='max-height: 300px;'>
                            </a>
                        </div>
                        <div class='text-center mt-auto p-3' style= 'height = 30%;'>
                            <a href='product.php?id={$product['ProductID']}' 
                            class='text-decoration-none'>
                                <h5 class='mb-0'>{$product['ProductName']}</h5>
                            </a>
                        </div>
                    </div>
                </div>";
            }
            echo "</div></div>"; // Chiude il container e la row
        ?>
    </div>
    <footer class="row row-cols-4 pt-2 justify-content-around mt-2" style= "background: rgb(224, 224, 235);">
        <div class="col-5 flex-column">
            <img class="img-fluid w-25" src="Img/logo.png"></img>
            <div class="fs-6">Global Cosmeceutical Technology GmbH</div>
            <div class="fs-6">info@cooleey-skincare-com.net</div>
            <div class="d-inline-flex">
                <a class="m-2" href="https://www.facebook.com" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951"/>
                    </svg>
                </a>
                <a class="m-2" href="https://www.instagram.com" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                    <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
                    </svg>
                </a>
                <a class="m-2" href="mailto:info@cooleey-skincare-com.net" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1zm13 2.383-4.708 2.825L15 11.105zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741M1 11.105l4.708-2.897L1 5.383z"/>
                    </svg>
                </a>
            </div>
        </div>
        <div class="col-auto">
            <div class="fs-5 fw-bold">Skin Care Section</div>
            <a class="fs-6" href="highEnd.html">High-end Efficacy</a><br>
            <a class="fs-6" href="dailyHome.php">Daily Home Use</a><br>
            <a class="fs-6" href="medicalProducts.php">Beauty Salon Products</a><br>
        </div>
        <div class="col-auto">
            <div class="fs-5 fw-bold">About Us</div>
            <a class="fs-6" href="history.html">Our History</a><br>
            <a class="fs-6" href="philosophy.html">Our Philosophy</a><br>
        </div>
        <div class="col-auto">
            <div class="fs-5 fw-bold">Costumer Service</div>
            <a class="fs-6" href="contacts.html">Contact Us</a><br>
            <a class="fs-6" href="beautyBase.html">Beauty Base</a><br>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>