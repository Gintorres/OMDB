<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = "SONGS"; 

  include("./nav.php");
  global $db;

  ?>


<div class="right-content">
    <div class="container">

      <h2 style = "color: #01B0F1;">Movies: Songs Relation</h3>

        </br>

        <table id="info" cellpadding="0" cellspacing="0" border="0"
            class="datatable table table-striped table-bordered datatable-style table-hover"
            width="100%" style="width: 100px;">
              <thead>
                <tr id="table-first-row">
                        <th>ID</th>
                        <th>Native Name</th>
                        <th>English Name</th>
                        <th>Song Title</th>
                        <th>Lyrics</th>
                </tr>
              </thead>

              <tfoot>
                <tr>
                        <th>ID</th>
                        <th>Native Name</th>
                        <th>English Name</th>
                        <th>Song Title</th>
                        <th>Lyrics</th>                        
                </tr>
              </tfoot>

              <tbody>

              <?php

$sql = "SELECT * FROM movies NATURAL JOIN movie_song NATURAL JOIN songs;";
$result = $db->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["movie_id"].'</td>
                                <td>'.$row["native_name"].'</td>
                                <td>'.$row["english_name"].' </span> </td>
                                <td>'.$row["title"].'</td>
                                <td>'.$row["lyrics"].'</td>
                            </tr>';
                    }//end while
                }//end if
                else {
                    echo "0 results";
                }//end else

                 $result->close();
                ?>

              </tbody>
        </table>


        <script type="text/javascript" language="javascript">
    $(document).ready( function () {
        
        $('#info').DataTable( {
            dom: 'lfrtBip',
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
            ] }
        );

        $('#info thead tr').clone(true).appendTo( '#info thead' );
        $('#info thead tr:eq(1) th').each( function (i) {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    
            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        } );
    
        var table = $('#info').DataTable( {
            orderCellsTop: true,
            fixedHeader: true,
            retrieve: true
        } );
        
    } );

</script>

        

 <style>
   tfoot {
     display: table-header-group;
   }
 </style>

<?php include("./footer.php"); ?>
