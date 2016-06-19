<table class="table table-striped">

    <thead>
        <tr>
            <th>Book</th>
            <th>Author</th>
            <th>Stars</th>
            <th>Date/Time</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody align = "left">
    <?php foreach ($rows as $row): ?>
        <tr>
            <td><?= $row["name"] ?></td>
            <td><?= $row["author"] ?></td>
            <td><?= $row["score"] ?></td>
            <td><?= $row["datetime"] ?></td>
            <td><?= $row["action"] ?></td>
        </tr>
    <?php endforeach ?>

    </tbody>

</table>
