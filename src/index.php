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
               <img class="Xetflix-logo" src="xetflix_logo.png"> 
               <form action="searchResult.php" method="get">
                    <input type="text" placeholder="Search" name="search">
               </form>
               
         
          </div>
          

          


         <main>
          <section class="video-grid">

 
               <h1>Trending</h1>
               <div class="video-container">   

                    <div class="modules">


<?php

$poster = $connection->prepare('SELECT poster_path, title FROM videos ORDER BY rating DESC;');
$poster->execute();
$image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

foreach ($image_urls as $row) {
       echo '<div class="module"> <a href="videoPage.php?mode='. $row['title'] . '">';
    echo '<img src="' . $row['poster_path'] . '" >';
  echo '<h1>' . $row['title'] . '</h1>';
  echo ' </a> </div>';
}

?>


                    </div>

               </div>


               <h1>Your list</h1>
               <div class="video-container">  

                    <div class="modules">
                        
<?php

$poster = $connection->prepare('SELECT poster_path, title FROM videos ORDER BY rating LIMIT 3;');
$poster->execute();
$image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

foreach ($image_urls as $row) {
       echo '<div class="module"> <a href="videoPage.php?mode='. $row['title'] . '">';
    echo '<img src="' . $row['poster_path'] . '" >';
  echo '<h1>' . $row['title'] . '</h1>';
  echo ' </a> </div>';
}

?>

                    </div>

                    

               </div>



<h1>Check out</h1>
               <div class="video-container">  

                    <div class="modules">
                         
<?php

$poster = $connection->prepare('SELECT poster_path, title FROM videos;');
$poster->execute();
$image_urls = $poster->fetchAll(PDO::FETCH_ASSOC);

foreach ($image_urls as $row) {
       echo '<div class="module"> <a href="videoPage.php?mode='. $row['title'] . '">';
    echo '<img src="' . $row['poster_path'] . '" >';
  echo '<h1>' . $row['title'] . '</h1>';
  echo ' </a> </div>';
}

?>

                    </div>

                    

               </div>




               <h1>Oops... Looks like you've reached the bottom!</h1>

               <div class="module">
                              
                         </div>

          </section>
         </main>
         

     </div>


	
     
     </body>
</html>
