<?php
require_once('./../vendor/autoload.php');
$db = new mysqli("localhost", "root", "", "meme");
require("Post.class.php");
require("User.class.php");
require("Vote.class.php");
<<<<<<< HEAD
//loader to taki pomocnik do ładowania szablon
=======
//loader to taki pomocnik do ładowania szablonów
>>>>>>> bae512de16f1c9e425619d74809e9e2907cf8427
$loader = new Twig\Loader\FilesystemLoader("./../src/templates");
//inicjujemy twiga
$twig = new Twig\Environment($loader);
?>