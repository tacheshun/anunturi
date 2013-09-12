<?php require_once("includes/Anunt.php"); ?>
<?php require_once("includes/Paginator.php"); ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Anunturi promovate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Marius Costache - @tacheshun">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>

<body>
 <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Anunturi</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li><a href="index.php">Home</a></li>
              <li class="active"><a href="">Toate Anunturile</a></li>          
		</ul>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
<div class="container">

     <h1>Toate anunturile</h1><br />

 <?php

 $data = $database->escape_value("SELECT * FROM anunturi ORDER BY is_promoted DESC, is_promoted_top DESC, creat_la DESC ");

 $result_set = $database->query($data);

 while ($row = $database->fetch_array($result_set)) {
 
  echo ("<h3> " . ucfirst($row['titlu']) . "</h3><br>");
   
  echo ("<em>" . ucfirst($row['descriere']) . "</em><br>");
  echo ("<em>Adaugat la <strong>" . $row['creat_la'] . "</strong></em><br>");
  echo ("<hr>");

}

?>

   </div> <!-- /container -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap-min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
  </body>
</html>
</body>
</html>