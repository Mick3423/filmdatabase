<?php
require "settings/init.php";
$film = $db->sql("SELECT * FROM filmoversigt WHERE FilmId = 10");
?>

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



<div class="container pb-5 my-5 bg-light">
    <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg">
        <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
            <h3 class="display-4 fw-bold lh-1"><?php echo $film[0]->FilmNavn; ?></h3>
            <p class="lead"> <?php echo $film[0]->FilmBeskrivelse; ?> </p>

        </div>
        <div class="col-lg-4 offset-lg-1 p-0 overflow-hidden ">
            <img src="uploads/<?php echo $film[0]->FilmBillede; ?>">

        </div>
    </div>
</div>




<div class="container">
    <div class="row">

        <div class="card col-12 col-md-6 col-lg-4 m">

            <div class="card-body">
                <h5 class="card-title text-uppercase">pris</h5>
                <p class="card-text"> <?php echo $film[0]->FilmPris; ?></p>


            </div>
        </div>

        <div class="card col-12 col-md-6 col-lg-4">

            <div class="card-body">
                <h5 class="card-title text-uppercase">filmens længde</h5>
                <p class="card-text"> <?php echo $film[0]->FilmLength; ?> </p>


            </div>
        </div>

        <div class="card col-12 col-md-6 col-lg-4">

            <div class="card-body">
                <h5 class="card-title text-uppercase">filmengenre </h5>
                <p class="card-text"> <?php echo $film[0]->FilmGenre; ?></p>


            </div>
        </div>

    </div>

</div>

<div class="container mt-5">
    <div class="row">

        <div class="card col-12 col-md-6 col-lg-4 m">

            <div class="card-body">
                <h5 class="card-title text-uppercase">instruktør</h5>
                <p class="card-text"> <?php echo $film[0]->FilmDirector; ?></p>


            </div>
        </div>

        <div class="card col-12 col-md-6 col-lg-4">

            <div class="card-body">
                <h5 class="card-title text-uppercase">Medvirkende</h5>
                <p class="card-text"> <?php echo $film[0]->FilmMedvirkende; ?> </p>


            </div>
        </div>

        <div class="card col-12 col-md-6 col-lg-4">

            <div class="card-body">
                <h5 class="card-title text-uppercase">filmens budget</h5>
                <p class="card-text"><?php echo $film[0]->FilmBudget; ?></p>


            </div>
        </div>
        <div class="card col-12 col-md-6 col-lg-4 justify-content-center mt-3 ">

            <div class="card-body">
                <h5 class="card-title text-uppercase">filmens oprettelse på databasen</h5>
                <p class="card-text"> <?php echo $film[0]->FilmDato; ?></p>


            </div>
        </div>

    </div>

</div>



<footer>
    <div class="container-fluid text-dark text-center bg-light mt-5">

        <p class="display-4 mb-1 text-uppercase">info</p>
        <ul>
            <li> Lorem ipsum dolor </li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, dicta!</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing.</li>
            <li>Lorem ipsum dolor sit amet.</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>


        </ul>
        <h5>Kontaktoplysninger
        </h5>
        <p> mail: Mail@filmdatabase.dk </p>
        <p> tlf nummer: xxxxxxx</p>


    </div>
</footer>

<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
