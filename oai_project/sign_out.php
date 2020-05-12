<?php
session_start();
$_SESSION = array();
session_destroy();
echo "<p>You are now logged out.</p>";
echo "<p><a href=\"index.php\">Return to homepage</a></p>";
?>
