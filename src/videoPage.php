<?php 

session_start();


include 'connection.php';


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
               <a href="searchResult.php?mode=movies"> <i class='bx  bx-movie-play'></i> </a>
               <a href="searchResult.php?mode=series"> <i class='bx  bxs-movie-play'></i> </a>
               <a href="filters.php"> <i class='bx  bx-heart' ></i>    </a>
          </div>

          <div class="topbar">
              <a href="index.php">
               <img class="Xetflix-logo" src="xetflix_logo.png"> </a>

               <form action="searchResult.php" method="get">
                    <input type="text" placeholder="Search" name="search">
               </form>
               
         
          </div>
          







         <main>
           <section class="video-grid"> 




<div class="info-vid">

  <div class="info">
                 
                  
    <?php
    $mode = $_GET['mode'];

    $poster = $connection->prepare('SELECT poster_path, title, summary FROM videos WHERE title = ?;');
    $poster->execute([$mode]);
    $image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

    foreach ($image_urls as $row) {
        echo '<img src="' . $row['poster_path'] . '" >';
      echo '<h1>' . $row['title'] . '</h1>';
      echo ' <p>' .$row['summary'] . '</p>';
    }

    ?>

                    
  </div>

  <div class="video">


    <?php
    $mode = $_GET['mode'];

    $poster = $connection->prepare('SELECT video_path FROM videos WHERE title = ?;');
    $poster->execute([$mode]);
    $image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

    foreach ($image_urls as $row) {
      echo '<video controls>';
      echo '<source src="' . $row['video_path'] . '" type="video/mp4"/>';
      echo '</video>';
    }

    ?>

              
  </div>



</div>
            </section>
         </main>
         
     
     </body>
</html>