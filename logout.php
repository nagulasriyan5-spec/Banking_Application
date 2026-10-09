<?php
require "bootstrap.php";
session_unset();
session_destroy();
header("Location:index.php?error=".urlencode("You have been logged out"));
exit;
?>
