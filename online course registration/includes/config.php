<?php
$connection=mysqli_connect('localhost','root','','admission');
if(!$connection)
{
    die("database is not working".mysqli_error());
}
?>