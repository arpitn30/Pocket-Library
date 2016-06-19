<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        //query database for the books added
        $rows = CS50::query("SELECT name FROM portfolios WHERE uid = ?", $_SESSION["id"]);

        // display the remove form
        render("remove_form.php", ["rows" => $rows, "title" => "Remove Book"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $book = CS50::query("SELECT * FROM portfolios WHERE uid = ? AND name = ?", $_SESSION["id"], $_POST["name"]);
        $book = $book[0];

        //Update table portfolios
        CS50::query("DELETE FROM portfolios WHERE uid = ? AND name = ?", $_SESSION["id"], $_POST["name"]);

        //add entry to history
        CS50::query("INSERT INTO history (uid, name, author, score, action)
        VALUES(?, ?, ?, ?, 'REMOVE')", $_SESSION["id"], $_POST["name"], $book["author"], $book["score"]);

        // redirect to portfolio
        redirect("/");
    }
?>
