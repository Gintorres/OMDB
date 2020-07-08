<div id="menu-left">

	<a href="movies_list.php">
	  	<div <?php if($left_selected == "LIST")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
	  	<img src="./images/releases.png">
	  	<br/>List<br/></div>
	  </a>

	<a href="movies_create.php">

	  <div <?php if($left_selected == "CREATE"){ echo 'class="menu-left-current-page"'; } ?>>

	  	<br/>Create<br/>

	  </div>

	</a>

	<a href="movies_update.php">

	  <div <?php if($left_selected == "UPDATE"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Update<br/>

	  </div>

	</a>

	<a href="movies_delete.php">

	  <div <?php if($left_selected == "DELETE"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Delete<br/>

	  </div>

	</a>

	<a href="movies_report.php">

	  <div <?php if($left_selected == "REPORT"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Report<br/>

	  </div>

	</a>

	<a href="movies_movie_data.php">

	  <div <?php if($left_selected == "MOVIE_DATA"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Movie Data<br/>

	  </div>

	</a>

	<a href="movies_multimedia.php">

	  <div <?php if($left_selected == "MULTIMEDIA"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Multimedia<br/>

	  </div>

	</a>	

	<p>Relationships</p>

	<a href="movies_songs_relation.php">

	  <div <?php if($left_selected == "SONGS"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Movies-Songs<br/>

	  </div>

	</a>

	<a href="movies_people_relation.php">

	  <div <?php if($left_selected == "PEOPLE"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Movies-People<br/>

	  </div>

	</a>

	<a href="movies_movie_data_relation.php">

	  <div <?php if($left_selected == "MOVIE_DATA_RELATION"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Movies-Movie_data<br/>

	  </div>

	</a>

	<a href="movies_multimedia_relation.php">

	  <div <?php if($left_selected == "MULTIMEDIA_RELATION"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Movies-Multimedia<br/>

	  </div>

	</a>

</div>
