<?php

    // configuration
    require("../includes/config.php");

    // render portfolio
    $rows = CS50::query("SELECT name, author, stat, score, tags FROM portfolios WHERE uid = ? ORDER BY author, name asc", $_SESSION["id"]);
    $total = CS50::query("SELECT count(*)'total' FROM portfolios WHERE uid = ?", $_SESSION["id"]);
    render("portfolio.php", ["rows" => $rows, "total" =>$total[0]["total"], "username" => "My ", "title" => "My List"]);

?>
