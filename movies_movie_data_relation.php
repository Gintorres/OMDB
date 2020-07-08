<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = "MOVIE_DATA_RELATION"; 

  include("./nav.php");

  ?>


<div class="right-content">
    <div class="container">

      <h2 style = "color: #01B0F1;">Movies: Movie_data Relation</h3>

        </br>

        <table id="info" cellpadding="0" cellspacing="0" border="0"
            class="datatable table table-striped table-bordered datatable-style table-hover"
            width="100%" style="width: 100px;">
              <thead>
                <tr id="table-first-row">
                        <th>ID</th>
                        <th>Native Name</th>
                        <th>English Name</th>
                        <th>Year</th>
                        <th>Language</th>
                        <th>Country</th>
                        <th>Genre</th>
                        <th>Plot</th>
                </tr>
              </thead>

              <tfoot>
                <tr>
                        <th>ID</th>
                        <th>Native Name</th>
                        <th>English Name</th>
                        <th>Year</th>
                        <th>Language</th>
                        <th>Country</th>
                        <th>Genre</th>
                        <th>Plot</th>                       
                </tr>
              </tfoot>

              <tbody>

              <?php

$sql = "SELECT * from `movies` ORDER BY year_made ASC;";
$result = $db->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["movie_id"].'</td>
                                <td>'.$row["native_name"].'</td>
                                <td>'.$row["english_name"].' </span> </td>
                                <td>'.$row["year_made"].'</td>
                                <td>'.$row["language"].'</td>
                                <td>'.$row["country"].'</td>
                                <td>'.$row["genre"].'</td>
                                <td>'.$row["plot"].'</td>                             
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
