<form action="add.php" method="post" id="addbook">
    <fieldset>

        <div class="form-group">
            <input autocomplete="off" class="form-control" name="name" placeholder="Book Title" type="text"/>
        </div>

        <div class="form-group">
            <input autocomplete="off" class="form-control" name="author" placeholder="Author" type="text"/>
        </div>

        <div class="form-group">
            <label for="status">Status: </label>
            <select class="form-control" name="status">
                <option disabled selected value="">Select Status</option>
                    <option>Completed</option>
                    <option>Reading</option>
                    <option>Dropped</option>
                    <option>On Hold</option>
                    <option>Plan To Read</option>
            </select>
        </div>

        <div class="form-group">
            <label for="score">Score: </label>
            <select class="form-control" name="score">
                <option disabled selected value="">Select Score</option>
                    <option>1</option> <option>2</option> <option>3</option> <option>4</option> <option>5</option>
                     <option>6</option> <option>7</option> <option>8</option> <option>9</option> <option>10</option>
            </select>
        </div>

        <div class="form-group">
            <input autocomplete="off" class="form-control" name="tags" placeholder="Tags" type="text"/>
        </div>

        <div class="form-group">
            <button class="btn btn-default" type="submit">Add Book</button>
        </div>
    </fieldset>
</form>
<script>

            var form = document.getElementById('addbook');

            // onsubmit
            form.onsubmit = function() {

                // validate email
                if (form.name.value == '')
                {
                    alert('You must provide the title of the book!');
                    return false;
                }

                // validate password
                else if (form.author.value == '')
                {
                    alert('Please enter the author of the book!');
                    return false;
                }

                // validate confirmation
                else if (form.status.value == '')
                {
                    alert('Please enter the status!');
                    return false;
                }
                // valid!
                return true;

            };

        </script>
