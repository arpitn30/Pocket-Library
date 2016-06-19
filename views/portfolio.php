<h4 font-weight:bold;><?= $username ?>List</h4>
<div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Book</th>
                <th>Author</th>
                <th>Status</th>
                <th>Stars</th>
                <th>Tags</th>
            </tr>
        </thead>
        <tbody align="left">
            <?php foreach ($rows as $row): ?>
            <tr>
                <td><?= $row["name"] ?></td>
                <td><?= $row["author"] ?></td>
                <td><?= $row["stat"] ?></td>
                <td><?= $row["score"] ?></td>
                <td><?= $row["tags"] ?></td>
            </tr>
            <?php endforeach ?>
            <tr>
                <td colspan="2">Total: <?= $total ?></td>
            </tr>
        </tbody>
    </table>
</div>
