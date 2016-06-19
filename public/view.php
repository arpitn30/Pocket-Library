<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // display the quote form
        render("view_form.php", ["title" => "View List"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Lookup Stock
        $id = CS50::query("SELECT id FROM users WHERE username = ?", $_POST["name"]);
        if(empty($id))
        {
            apologize("Invalid username.");
        }
        $id = $id[0]["id"];

        $rows = CS50::query("SELECT name, author, stat, score, tags FROM portfolios WHERE uid = ? ORDER BY author, name asc", $id);
        $total = CS50::query("SELECT count(*)'total' FROM portfolios WHERE uid = ?", $id);
        render("portfolio.php", ["rows" => $rows, "total" =>$total[0]["total"], "username" => strtoupper($_POST["name"])."'s ", "title" => $_POST["name"]." List"]);
    }
?>
