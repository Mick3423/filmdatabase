<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>filmside </title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">filmdatabase</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">forside</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="filmliste.php">liste</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="filmside.php">filmside</a>
                </li>


            </ul>

        </div>
    </div>
</nav>


<div class="container">

    <div class="filmliste">
        <div class="filter p-5">
            <div class="row">
                <div class="col-md-4 ">
                    <input type="search" class="form-control nameSearch" placeholder="søg og find en film">
                </div>
                <div class="col-md-4 ">
                    <input type="search" class="form-control priceSearch" placeholder="søg og find en pris">
                </div>
                <div class="col-md-4 ">
                    <input type="search" class="form-control genreSearch" placeholder="søg og find en genre">
                </div>
            </div>
        </div>
        <div class="items">

        </div>

    </div>
</div>




<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script type="module">
import Filmliste from "./js/filmliste.js";
const filmliste = new Filmliste()
filmliste.init()
</script>
</body>
</html>
