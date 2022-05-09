<?php
 
//Including Database configuration file.
include "db.php";

//Getting value of "search" variable from "script.js".
if (isset($_POST['search'])) {
//Search box value assigning to $Name variable.
   $Name = $_POST['search'];
 
//Search query.
   $Query = "SELECT name FROM pois WHERE name LIKE '%$Name%' LIMIT 5";
 
//Query execution
   $ExecQuery = MySQLi_query($con, $Query);
 
//Creating unordered list to display the result.
   echo '
<ul>
   ';
   //Fetching result from the database.
//    while ($Result = MySQLi_fetch_array($ExecQuery)) {
//        ?>
//    <!-- Creating unordered list items.
 
//         Calling javascript function named as "fill" found in "map.js" file.
 
//         By passing fetched result as a parameter. -->
 
//    <li onclick='fill("<?php echo $Result['Name']; ?>")'>
//    <a>
//    <!-- Assigning searched result in "Search box" in "map.hbs" file. -->
 
//        <?php echo $Result['Name']; ?>
//    </li></a>
//    <!-- Below php code is just for closing parenthesis. Don't be confused. -->
//    <?php
// }}
// ?>
// </ul>

?>