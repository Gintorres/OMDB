<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = ""; 

  include("./nav.php");
  include_once 'database.php';
  include_once 'functions.php';
  global $db;

  ?>

<!DOCTYPE html>

<html>

  <style>
  .head {

    font-family: 'Roboto', sans-serif;
    font-weight: bold;
    margin-bottom: 3%;

  }

  .title {

    font-family: 'Roboto', sans-serif;
    color: rgb(0, 153, 51);
    font-weight: bold;
    font-size: 2.5rem;
    margin-top: 2%;
    text-shadow: 0.05em 0.05em #505050;    

  }

  .words{

    font-family: 'Roboto', sans-serif;

  }

  .container {

      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
      margin-right: auto;
      margin-left: auto;

  }

  .people_wrapper {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: space-around;
    align-items: baseline;

  }

  .people_wrapper h3 {
    margin: 3% auto 2%;
    padding: 1%;
    font-size: 1.5em;
    font-family: 'Roboto', sans-serif;
    text-shadow: 0.05em 0.05em #505050;
    text-transform: uppercase;
    text-align: center;

  }

  .people_wrapper img {
    border-radius: 30%;
    max-width: 60%;
    margin: 2%;
    overflow: hidden;  
  }

  .people_wrapper figure {
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden; 
  }

  .people_wrapper figure:hover {
    opacity: 0.75;
    transition: .3s opacity;
  }

  .person {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 33.3333333%; /* 853.333333px / 2560px */
    padding: 2%;
}

  }

  </style>

  <body>

    <div class="container">

      <?php

      	/* Set movie_id equal to variable */

	      if (isset($_GET['movie_id'])) {

	      	$movie_id = mysqli_real_escape_string($db, $_GET['movie_id']);

	      }

	    /* SQL Queries */

	    // Movie Poster query
	    $poster = "poster";
	    $sql_poster = "SELECT * FROM `movies` NATURAL JOIN `movie_media` WHERE movies.movie_id = movie_media.movie_id AND movie_media.m_link_type = ('$poster') AND movies.movie_id = " . $movie_id;
	    $sql_poser_result = $db->query($sql_poster);
	    
	    // Movie information query
	    $sql_Q1 = "SELECT * FROM `movies` WHERE movie_id =" . $movie_id;
	    $sql_Q1_result = $db->query($sql_Q1);

	    // Movie data query
	    $sql_Q2 = "SELECT * FROM `movies` NATURAL JOIN `movie_data` WHERE movies.movie_id = movie_data.movie_id AND movies.movie_id = " . $movie_id;
	    $sql_Q2_result = $db->query($sql_Q2);

	    // Multimedia query
	    $sql_Q3 = "SELECT * FROM `movies` NATURAL JOIN `movie_media` WHERE movies.movie_id = movie_media.movie_id AND movies.movie_id = " . $movie_id;
	    $sql_Q3_result = $db->query($sql_Q3);

	    // Movie trivia query
	    $sql_Q4 = "SELECT * FROM `movies` NATURAL JOIN `movie_trivia` WHERE movies.movie_id = movie_trivia.movie_id AND movies.movie_id = " . $movie_id;
	    $sql_Q4_result = $db->query($sql_Q4);

	    // Movie keywords query
	    $sql_Q5 = "SELECT * FROM `movies` NATURAL JOIN `movie_keywords` WHERE movies.movie_id = movie_keywords.movie_id AND movies.movie_id = " . $movie_id;
	    $sql_Q5_result = $db->query($sql_Q5);

	    // People query
	    $sql_Q6a = "SELECT *, CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name FROM `movie_people` NATURAL JOIN `people` WHERE movie_people.people_id = people.id AND movie_people.movie_id = " . $movie_id;
	    $sql_Q6a_result = $db->query($sql_Q6a);

        // People song_people query
	    $sql_Q6b = "SELECT *, CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name FROM `movie_song` NATURAL JOIN `song_people` NATURAL JOIN `people` WHERE movie_song.song_id = song_people.song_id AND song_people.people_id = people.id AND movie_song.movie_id = " . $movie_id;
	    $sql_Q6b_result = $db->query($sql_Q6b);

	    // Song query
	    $sql_Q7 = "SELECT * FROM `movie_song` NATURAL JOIN `songs` WHERE movie_song.song_id = songs.song_id AND movie_song.movie_id = " . $movie_id;
	    $sql_Q7_result = $db->query($sql_Q7);

	    // Song media query
	    $sql_Q8 = "SELECT * FROM `movie_song` NATURAL JOIN `songs` NATURAL JOIN `song_media` WHERE movie_song.song_id = song_media.song_id && songs.song_id AND movie_song.movie_id = " . $movie_id;
	    $sql_Q8_result = $db->query($sql_Q8);

	    // Song people query
	    $sql_Q9 = "SELECT *, CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name FROM `movie_song` NATURAL JOIN `songs` NATURAL JOIN `song_people` NATURAL JOIN `people` WHERE movie_song.song_id = song_people.song_id && songs.song_id AND song_people.people_id = people.id AND movie_song.movie_id = " . $movie_id;
	    $sql_Q9_result = $db->query($sql_Q9);

	    // Song keywords query
	    $sql_Q10 = "SELECT * FROM `songs` NATURAL JOIN `song_keywords` NATURAL JOIN `movie_song` WHERE songs.song_id = song_keywords.song_id && movie_song.song_id AND movie_song.movie_id = " . $movie_id;
	    $sql_Q10_result = $db->query($sql_Q10); 

        /* MOVIE INFORMATION */

	      if ($sql_Q1_result->num_rows > 0) {

			print('<h2 class= "head"> Movie Information </h2> <hr>');


			if($sql_poser_result->num_rows > 0) {

				$poster_tuple = $sql_poser_result->fetch_assoc();

				print('<img style="width: 30%" src="./images/movie_media/'.$poster_tuple["m_link"].'"></img>');

		    }

			$q1_tuple = $sql_Q1_result->fetch_assoc();

			print( '<h3 class= "title"> Movie ID: </h3><p class= "words" >'.$q1_tuple["movie_id"]. '</p>
                <h3 class= "title"> Native Name: </h3><p class= "words">' .$q1_tuple["native_name"]. '</p>
                <h3 class= "title"> English Name: </h3><p class= "words">' .$q1_tuple["english_name"]. '</p>
                <h3 class= "title"> Year: </h3><p class= "words">' .$q1_tuple["year_made"]. '</p>' );

	          

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE');

	      }

	      $sql_Q1_result->close();

        /* MOVIE DATA */

	      if ($sql_Q2_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Movie Data </h2> <hr>');

			$q2_tuple = $sql_Q2_result->fetch_assoc();

            print( '<h3 class= "title"> Language: </h3><p class= "words" >'.$q2_tuple["language"]. '</p>
                    <h3 class= "title"> Country: </h3><p class= "words">' .$q2_tuple["country"]. '</p>
                    <h3 class= "title"> Genre: </h3><p class= "words">' .$q2_tuple["genre"]. '</p>
                    <h3 class= "title"> Plot: </h3><p class= "words">' .$q2_tuple["plot"]. '</p>' );


	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_DATA');

	      }

	      $sql_Q2_result->close();

        /* MULTIMEDIA */

	      if ($sql_Q3_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Multimedia </h2> <hr>');

	        while($q3_tuple = $sql_Q3_result->fetch_assoc()) {

	            print( '<h3 class= "title"> Multimedia Link: </h3><a class= "words" href="'.$q3_tuple["m_link"].'">' .$q3_tuple["m_link"]. ' </a>
	                    <h3 class= "title"> Link Type: </h3><p class= "words">' .$q3_tuple["m_link_type"]. '</p>
	                    </br><div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_MEDIA');

	      }

	      $sql_Q3_result->close();

        /* MOVIE TRIVIA */

	      if ($sql_Q4_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Movie Trivia </h2> <hr>
	      		  <h3 class= "title"> Trivia list: </h3></br>');

	        while($q4_tuple = $sql_Q4_result->fetch_assoc()) {

	            print(  '<p class= "words"> - ' .$q4_tuple["trivia"]. ' </p>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_TRIVIA');

	      }

	      $sql_Q4_result->close();

        /* MOVIE KEYWORDS */

	      if ($sql_Q5_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Movie Keywords </h2> <hr>
	      		  <h3 class= "title"> Keywords list: </h3></br>');

	        while($q5_tuple = $sql_Q5_result->fetch_assoc()) {

	            print(  '<p class= "words"> - ' .$q5_tuple["keyword"]. ' </p>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_KEYWORDS');

	      }

	      $sql_Q5_result->close();

        /* PEOPLE INFORMATION */

	      if ($sql_Q6a_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Movie Staff </h2> <hr>');
	      	print('<div class="people_wrapper">');

	        while($q6a_tuple = $sql_Q6a_result->fetch_assoc()) {

	            print( '<div class="person"><figure><img src="./images/people/'.$q6a_tuple["image_name"].'"></img></figure>
	                    <h3 class= "title"> Screen Name: </h3><p class= "words">' .$q6a_tuple["screen_name"]. '</p>
	                    <h3 class= "title"> Full Name: </h3><p class= "words">' .$q6a_tuple["full_name"]. '</p>
	                    <h3 class= "title"> Role: </h3><p class= "words">' .$q6a_tuple["role"]. '</p>
	                    <h3 class= "title"> Gender: </h3><p class= "words">' .$q6a_tuple["gender"]. '</p></div>' );

	        }

	        if ($sql_Q6b_result->num_rows > 0) {

		        while($q6b_tuple = $sql_Q6b_result->fetch_assoc()) {

		            print('<div class="person"><figure><img src="./images/people/'.$q6b_tuple["image_name"].'"></img></figure>
			                    <h3 class= "title"> Screen Name: </h3><p class= "words">' .$q6b_tuple["screen_name"]. '</p>
			                    <h3 class= "title"> Full Name: </h3><p class= "words">' .$q6b_tuple["full_name"]. '</p>
			                    <h3 class= "title"> Role: </h3><p class= "words">' .$q6b_tuple["role"]. '</p>
			                    <h3 class= "title"> Gender: </h3><p class= "words">' .$q6b_tuple["gender"]. '</p></div>');

		        }

	        }


	        print('</div>');

	      }

	      else {

	        print('<hr>NO DATA ON PEOPLE');

	      }

	      $sql_Q6a_result->close();
	      $sql_Q6b_result->close();

        /* SONGS INFORMATION */

	      if ($sql_Q7_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Songs </h2> <hr>');

	        while($q7_tuple = $sql_Q7_result->fetch_assoc()) {

	            print( '<h3 class= "title"> Title: </h3><p class= "words">' .$q7_tuple["title"]. '</p>
	                    <h3 class= "title"> Lyrics: </h3><p class= "words">' .$q7_tuple["lyrics"]. '</p>
	                    </br><div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONGS');

	      }

	      $sql_Q7_result->close();

        /* SONGS MEDIA INFORMATION */

	      if ($sql_Q8_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Songs Media </h2> <hr>');

	        while($q8_tuple = $sql_Q8_result->fetch_assoc()) {

	            print( '<h3 class= "title"> Song: </h3><p class= "words" >'.$q8_tuple["title"]. '</p>
	                    <h3 class= "title"> Link: </h3><p class= "words">' .$q8_tuple["s_link"]. '</p>
	                    <h3 class= "title"> Link Type: </h3><p class= "words">' .$q8_tuple["s_link_type"]. '</p>
	                    </br><div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONG_MEDIA');

	      }

	      $sql_Q8_result->close();

        /* SONGS PEOPLE INFORMATION */

	      if ($sql_Q9_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Artist Information </h2> <hr>');

	        while($q9_tuple = $sql_Q9_result->fetch_assoc()) {

	            print( '<h3 class= "title"> Song: </h3><p class= "words" >'.$q9_tuple["title"]. '</p>
	                    <h3 class= "title"> Artist: </h3><p class= "words">' .$q9_tuple["full_name"]. '</p>
	                    <h3 class= "title"> Role: </h3><p class= "words">' .$q9_tuple["role"]. '</p>
	                    </br><div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONG_PEOPLE');

	      }

	      $sql_Q9_result->close();

        /* SONG KEYWORDS */

	      if ($sql_Q10_result->num_rows > 0) {

	      	print('</br><h2 class= "head"> Song Keywords </h2><hr>');

	        while($q10_tuple = $sql_Q10_result->fetch_assoc()) {

	            print('<h3 class= "title"> Song: </h3><p class= "words" >'.$q10_tuple["title"]. '</p>  
	            	  <h3 class= "title"> Keyword:</h3><p class= "words" >' .$q10_tuple["keyword"]. ' </p>' );

	        }


	      }

	      else {

	        print('<hr>NO DATA ON SONG_KEYWORDS');

	      }

	      $sql_Q10_result->close();

	      echo '</br>';  	      

      ?>

    </div>

  </body>
</html>
