<?php require_once("includes/paginator.php"); ?>
<?php require_once("includes/database.php"); ?>
<?php require_once("includes/anunt.php"); ?>

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
              <li class="active"><a href="#">Home</a></li>
              <li><a href="all.php">Toate Anunturile</a></li>
<!--               <li><a href="#contact">Contact</a></li>-->            
		</ul>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
 <div class="container">
 <h1>Anunturi</h1><br />
 <?php
 	$page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;
 	$per_page = 10;
 	$total_count = Anunt::count_all();
 	$pagination = new Pagination($page, $per_page, $total_count);
 ?>  

 <?php

 $data = $database->escape_value(" SELECT * FROM anunturi ORDER BY is_promoted DESC, creat_la DESC");
 $data .= $database->escape_value(" LIMIT {$per_page} ");
 $data .= $database->escape_value(" OFFSET {$pagination->offset()}");

 $anunturi = Anunt::find_by_sql( $data );

 $result_set = $database->query( $data );

 while ($row = $database->fetch_array($result_set)) {
	echo ("<h3>" . ucfirst($row['titlu']) . " </h3><br>");
	echo ("<em>" . ucfirst($row['descriere']) . "</em><br>");
	echo ("<em>Adaugat la <strong>" . $row['creat_la'] . "</strong></em><br>");
	echo ("<hr>");
}

?>
<div class="pagination" style="clear: both;">
	<ul>
<?php
	if($pagination->total_pages() > 1) {
		
	if($pagination->has_previous_page()) { 
      echo "<li><a href=\"index.php?page=";
      echo $pagination->previous_page();
      echo "\">&laquo; Anterioarele</a> </li>"; 
    }
		for($i=1; $i <= $pagination->total_pages(); $i++) {
			if($i == $page) {
				echo " <li class=\"active\"><a href='#'>{$i}</a></li> ";
			} else {
				echo " <li><a href=\"index.php?page={$i}\">{$i}</a></li> "; 
			}
		}

		if($pagination->has_next_page()) { 
			echo " <li><a href=\"index.php?page=";
			echo $pagination->next_page();
			echo "\">Urmatoarele &raquo;</a> </li>"; 
    } ?>
		</ul>
<?php	}

?>
 </div>
 
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