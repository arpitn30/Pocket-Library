<form action="remove.php" method="post">
    <fieldset>
        <div class="form-group">
            <label for="name">Select the book you want to remove: </label><br>
            <select class="form-control" name="name" autofocus>
                <option disabled selected value="">Book Title</option>
                <?php
                    foreach ($rows as $row)
                    {
                        print("<option>{$row["name"]}</option>");
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <button class="btn btn-default" type="submit">Remove Book</button>
        </div>
    </fieldset>
</form>
