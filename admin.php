


<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>admin film side</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.tiny.cloud/1/q1l342zya55m52pkg3onizzo96imblog2gl1njs1f05rp6hy/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

</head>

<body>


<form method="post" action="admin.php">
    <div class="row">
        <div class="col-12 col-md-6">
            <div class="form-group">
                <label for="FilmNavn">FilmNavn </label>
                <input class="form-control" type="text" name="data[FilmNavn ]" id="FilmNavn" placeholder="FilmNavn" value="">
            </div>
        </div>
        <div class="col-12 col-md-6">
            <label for="FilmGenre"> FilmGenre</label>
            <input class="form-control" type="text" name="data[FilmGenre]" id="FilmGenre" placeholder="FilmGenre" value="">
        </div>
        <div class="col-12 col-md-6">
            <label for="FilmDirector "> FilmDirector </label>
            <input class="form-control" type="text" name="data[FilmDirector ]" id="FilmDirector " placeholder="FilmDirector " value="">
        </div>
        <div class="col-12 col-md-6">
            <label for="FilmPris"> FilmPris</label>
            <input class="form-control" type="number" step="0.1" name="data[FilmPris]" id="FilmPris" placeholder="Film Pris" value="">
        </div>
        <div class="col-12 col-md-6">
            <label for="FilmLength">FilmLength</label>
            <input class="form-control" type="number" step="0.1" name="data[FilmLength]" id="FilmLength" placeholder="FilmLength" value="">
        </div>
        <div class="col-12 col-md-6">
            <label for="FilmBudget">FilmBudget </label>
            <input class="form-control" type="number" step="0.1" name="data[FilmBudget]" id="FilmLength" placeholder="FilmBudget" value="">
        </div>
    </div>
    <div class="col-12 ">
        <div class="form-group">
            <label for="FilmBeskrivelse"></label>
            <textarea class="form-control" name="data[FilmBeskrivelse]" id="FilmBeskrivelse"></textarea>
        </div>
    </div>
    <div class="col-12 ">
        <div class="form-group">
            <label for="FilmMedvirkende"></label>
            <textarea class="form-control" name="data[FilmMedvirkende]" id="FilmMedvirkende"></textarea>
        </div>
    </div>
    <div class="col-12 col-md-6 offset-md-6 ">
        <button class="form-control btn btn-primary" type="submit" id="btnSubmit">Opret Film</button>
    </div>
</form>




<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script>
    tinymce.init({
        selector:  'textarea',
    });
</script>
</body>
</html>

