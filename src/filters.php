<?php 


session_start();

include 'connection.php';


function debug( $data )
{

  echo "<pre>";
  print_r( $data );
  echo "</pre>";
}
?>

<html>
     <head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Xetflix >:3 </title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     </head>





     <body>


     <div class="home-page">
   

          <div class="sidebar">
               
               
               <a href="index.php"> <i class='bx  bx-home' id="icon1"></i></a> 
               <a href="searchResult.php?mode=movies"> <i class='bx  bx-movie-play'  ></i> </a>
               <a href="searchResult.php?mode=series"> <i class='bx  bxs-movie-play' ></i> </a>
               <a href="filters.php"> <i class='bx  bx-heart' ></i>    </a>
          </div>



          <div class="topbar">
               <img class="Xetflix-logo" src="xetflix_logo.png"> 
               <form action="searchResult.php" method="get">
                    <input type="text" placeholder="Search" name="search">
               </form>
               
         
          </div>


          
         <main>
          <section class="video-grid">
            <form method="get">
            <div class="filters">

          <div class="filtergenre">
            <h1>Genres</h1>

<label class="container">
  <input type="checkbox" name="action" value="1"> action
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="comedy" value="1"> comedy
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="sci-fi" value="1"> sci-fi
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="adventure" value="1"> adventure
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="family" value="1"> family
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="thriller" value="1"> thriller
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="crime" value="1"> crime
  <span class="checkmark"></span>
</label>
            
 </div>




 <div class="filteractor">
  <h1>Actors</h1>



<label class="container">
  <input type="checkbox" name="paulrudd" value="1"> Paul Rudd
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="rdj" value="1"> Robert Downey Jr.
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="chrise" value="1"> Chris Evans
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="markr" value="1"> Mark Ruffalo
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="scarlettj" value="1"> Scarlett Johanson
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="tomh" value="1"> Tom Holland
  <span class="checkmark"></span>
</label>

<label class="container">
  <input type="checkbox" name="michaelc" value="1"> Michael Cera
  <span class="checkmark"></span>
</label>
          </div>

          <div class="filtersearch">
            
            <button type="submit" class="btn" value="1" name="applyFilters" >Apply</button>
            
          </div>


          </div>
          </form>

           <section class="video-grid">


<div class="result-videos">
<?php

$filterg = " ";
$filtera = " ";


if (isset( $_GET['applyFilters'])) {
  if (isset( $_GET['action'])){
    if($filterg == " "){
      $filterg .= "'action'";  
    }
    else{
      $filterg .= ", 'action'"; 
    }
  }

  if (isset( $_GET['comedy'])){
    if($filterg == " "){
      $filterg .= "'comedy'";  
    }
    else{
      $filterg .= ", 'comedy'"; 
    }
  }

  if (isset( $_GET['sci-fi'])){
     if($filterg == " "){
      $filterg .= "'scifi'";  
    }
    else{
      $filterg .= ", 'scifi'"; 
    }
  }

  if (isset( $_GET['adventure'])){ 
     if($filterg == " "){
      $filterg .= "'adventure'";  
    }
    else{
      $filterg .= ", 'adventure'"; 
    }
  }

  if (isset( $_GET['family'])){ 
    if($filterg == " "){
      $filterg .= "'family'";  
    }
    else{
      $filterg .= ", 'family'"; 
    }
  }

  if (isset( $_GET['thriller'])){
    if($filterg == " "){
      $filterg .= "'thriller'";  
    }
    else{
      $filterg .= ", 'thriller'"; 
    }
  }

  if (isset( $_GET['crime'])){
    if($filterg == " "){
      $filterg .= "'crime'";  
    }
    else{
      $filterg .= ", 'crime'"; 
    }
  }


  if (isset( $_GET['paulrudd'])){
    if($filtera == " "){
      $filtera .= "'Paul Rudd'"; 
    }
    else{
      $filtera .= ", 'Paul Rudd'"; 
    }     
  }

  if (isset( $_GET['rdj'])){
    if($filtera == " "){
      $filtera .= "'Robert Downey Jr.'";  
    }
    else{
      $filtera .= ", 'Robert Downey Jr.'"; 
    }
  }

  if (isset( $_GET['chrise'])){
    if($filtera == " "){
      $filtera .= "'Chris Evans'";  
    }
    else{
      $filtera .= ", 'Chris Evans'"; 
    }
  }

  if (isset( $_GET['markr'])){
    if($filtera == " "){
      $filtera .= "'Mark Ruffalo'";  
    }
    else{
      $filtera .= ", 'Mark Ruffalo'"; 
    }
  }

  if (isset( $_GET['scarlettj'])){
    if($filtera == " "){
      $filtera .= "'Scarlett Johanson'";  
    }
    else{
      $filtera .= ", 'Scarlett Johanson'"; 
    }
  }

  if (isset( $_GET['tomh'])){
    if($filtera == " "){
      $filtera .= "'Tom Holland'";  
    }
    else{
      $filtera .= ", 'Tom Holland'"; 
    }
  }

  if (isset( $_GET['michaelc'])){
    if($filtera == " "){
      $filtera .= "'Michael Cera'";  
    }
    else{
      $filtera .= ", 'Michael Cera'"; 
    }
  }


}

if ($filterg == " "){
  $filterg = "SELECT genre FROM genres";
}
if ($filtera == " "){
  $filtera = "SELECT full_name FROM actors";
}


$counter = "(SELECT count(video_id) FROM videos)";

$poster = $connection->prepare('SELECT poster_path, title FROM videos v
JOIN genres_videos gv on v.video_id = gv.video_id
JOIN genres g on gv.genre_id = g.genre_id
JOIN actors_videos av on v.video_id = av.video_id
JOIN actors a on av.actor_id = a.actor_id
WHERE 1 AND a.full_name IN ('. $filtera . ') 
AND g.genre IN (' . $filterg . ') 
GROUP BY v.video_id HAVING COUNT(*) <= ' . $counter);

$poster->execute([]);
$image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

//debug($filtera);
//debug($filterg);
//debug($counter);


foreach ($image_urls as $row) {
       echo '<div class="result-img"> <a href="videoPage.php?mode='. $row['title'] . '">';
    echo '<img src="' . $row['poster_path'] . '" >';
  echo '<h1>' . $row['title'] . '</h1>';
  echo ' </a> </div>';
}


?>

</div>


</section>
</main>
          
</body>
</html>