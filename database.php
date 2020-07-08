<?php

DEFINE('DB_SERVER', 'localhost');
DEFINE('DB_NAME', 'omdb');
DEFINE('DB_USER', 'root');
DEFINE('DB_PASS', '');

$db = new mysqli(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
$db->set_charset("utf8");
function run_sql($sql_script)
{
    global $db;
    // check connection
    if ($db->connect_error)
    {
        trigger_error(print_r(debug_backtrace()).'.Database connection failed: '  . $db->connect_error, E_USER_ERROR);
    }
    else
    {
        $result = $db->query($sql_script);
        if($result === false)
        {
            trigger_error('Stack Trace: '.print_r(debug_backtrace()).'Invalid SQL: ' . $sql_script . '; Error: ' . $db->error, E_USER_ERROR);
        }
        else if(strpos($sql_script, "INSERT")!== false)
        {
            return $db->insert_id;
        }
        else
        {
            return $result;
        }
    }
}

  function db_connect() {
    $connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
    confirm_db_connect();
    return $connection;
  }

  function db_disconnect($connection) {
    if(isset($connection)) {
      mysqli_close($connection);
    }
  }

  function confirm_db_connect() {
    if(mysqli_connect_errno()) {
      $msg = "Database connection failed: ";
      $msg .= mysqli_connect_error();
      $msg .= " (" . mysqli_connect_errno() . ")";
      exit($msg);
    }
  }

function confirm_result_set($result_set) {
    global $db;

    if (!$result_set) {
        echo mysqli_error($db);
        exit("The Database query failed.");
    }
}
?>
