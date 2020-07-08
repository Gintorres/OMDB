<?php

  $nav_selected = "PEOPLE"; 
  $left_buttons = "YES"; 
  $left_selected = "LIST"; 

  include("./nav.php");
  global $db;

  ?>


<div class="right-content">
    <div class="container">

      <h3 style = "color: #01B0F1;">People: List</h3>

        </br>

        <table id="info" cellpadding="0" cellspacing="0" border="0"
            class="datatable table table-striped table-bordered datatable-style table-hover"
            width="100%" style="width: 100px;">
              <thead>
                <tr id="table-first-row">
                        <th>People ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Birth Place</th>
                        <th>Date of Birth</th>
                </tr>
              </thead>

              <tfoot>
                <tr>
                        <th>People ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Birth Place</th>
                        <th>Date of Birth</th>
                </tr>
              </tfoot>

              <tbody>

              <?php

$sql = "SELECT * from movies ORDER BY year ASC;";
$result = $db->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["people_ID"].'</td>
                                <td>'.$row["name"].'</td>
                                <td>'.$row["gender"].' </span> </td>
                                <td>'.$row["birth_place"].'</td>
                                <td>'.$row["date_of_birth"].'</td>
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
