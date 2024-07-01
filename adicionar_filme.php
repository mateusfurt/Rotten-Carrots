<?php
include 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $release_year = $_POST['release_year'];
    $director = $_POST['director'];
    $genre = $_POST['genre'];
    $duration = $_POST['duration'];
    $cast = $_POST['cast'];
    $rating = $_POST['rating'];
    $score = $_POST['score'];

    // Upload do cartaz do filme
    $poster = $_FILES['poster']['name'];
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($poster);
    move_uploaded_file($_FILES['poster']['tmp_name'], $target_file);

    $sql = "INSERT INTO movies (title, description, release_year, director, genre, duration, cast, rating, score, poster) 
            VALUES ('$title', '$description', $release_year, '$director', '$genre', $duration, '$cast', '$rating', $score, '$target_file')";

    if ($conn->query($sql) === TRUE) {
        echo "Filme adicionado com sucesso!";
    } else {
        echo "Erro: " . $conn->error;
    }

    $conn->close();
}
?>
