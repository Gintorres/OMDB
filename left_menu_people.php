<div id="menu-left">

	<a href="people_list.php">
	  	<div <?php if($left_selected == "LIST")
	  	{ echo 'class="menu-left-current-page"'; } ?>>
	  	<img src="./images/releases.png">
	  	<br/>List<br/></div>
	  </a>

	<a href="people_create.php">

	  <div <?php if($left_selected == "CREATE"){ echo 'class="menu-left-current-page"'; } ?>>

	  	<br/>Create<br/>

	  </div>

	</a>

	<a href="people_update.php">

	  <div <?php if($left_selected == "UPDATE"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Update<br/>

	  </div>

	</a>

	<a href="people_delete.php">

	  <div <?php if($left_selected == "DELETE"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Delete<br/>

	  </div>

	</a>

	<a href="people_report.php">

	  <div <?php if($left_selected == "REPORT"){ echo 'class="menu-left-current-page"'; } ?>>
	  	
	  	<br/>Report<br/>

	  </div>

	</a>

</div>
