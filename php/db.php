

// require_once realpath(__DIR__ . '/php/autoload.php');

// // Looing for .env at the root directory
// $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
// $dotenv->load();

// $con = MySQLi_connect(
//     $_ENV['DATABASE_HOST'], //Server host name.
//     $_ENV['DATABASE_USER'], //Database username.
//     $_ENV['DATABASE_PASSWORD'], //Database password.
//     $_ENV['DATABASE_NAME'] //Database name or anything you would like to call it.
//     echo $_ENV['DATABASE_NAME'];
// );
<?php
$con = MySQLi_connect(
    "localhost", //Server host name.
    "root", //Database username.
    "", //Database password.
    "covid_database" //Database name or anything you would like to call it.
 );
 
//Check connection
if (MySQLi_connect_errno()) {
   echo "Failed to connect to MySQL: " . MySQLi_connect_error();
}
?>
