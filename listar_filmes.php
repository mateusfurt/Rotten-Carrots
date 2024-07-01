<?php
// listar_filmes.php

include 'db_connection.php';

$sql = "SELECT * FROM movies";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo '<div class="film">';
        echo '<img src="'.$row["poster"].'" alt="">';
        echo '<h3 class="edit-title" data-id="' . $row["id"] . '">' . $row["title"] . '</h3>';
        echo '<input type="text" class="edit-title-input" data-id="' . $row["id"] . '" value="' . $row["title"] . '" style="display:none;">';
        echo '<p class="edit-description" data-id="' . $row["id"] . '">' . $row["description"] . '</p>';
        echo '<textarea class="edit-description-input" data-id="' . $row["id"] . '" style="display:none;">' . $row["description"] . '</textarea>';
        // Remova a linha abaixo que gera o botão de delete
        // echo '<button onclick="deletarFilme(' . $row["id"] . ')">Deletar</button>';
        echo '</div>';
    }
} else {
    echo "Nenhum filme encontrado.";
}

$conn->close();
?>
