<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // display the buy form
        render("add_form.php", ["title" => "Add Book"]);
    }

    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        //Change to uppercase
        $_POST["name"] = strtoupper($_POST["name"]);
        $_POST["author"] = strtoupper($_POST["author"]);


        //Update table portfolios
        CS50::query("INSERT INTO portfolios (uid, name, author,stat, score, tags)
        VALUES(?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE uid=?, name=?, author=?, stat=?, score=?, tags=?",
        $_SESSION["id"], $_POST["name"], $_POST["author"], $_POST["status"], $_POST["score"], $_POST["tags"],
        $_SESSION["id"], $_POST["name"], $_POST["author"], $_POST["status"], $_POST["score"], $_POST["tags"]);


        //add entry to history
        CS50::query("INSERT INTO history (uid, name, author, score, action)
        VALUES(?, ?, ?, ?, 'ADD/EDIT')", $_SESSION["id"], $_POST["name"], $_POST["author"], $_POST["score"]);

        //redirect to portfolio
        redirect("/");
    }
?>
