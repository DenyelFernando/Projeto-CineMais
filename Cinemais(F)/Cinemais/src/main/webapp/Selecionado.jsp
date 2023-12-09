<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineMais</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: left;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav {
            cursor: pointer;
            background-color: #ddd;
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-bar {
            margin: 0 auto;
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .user-profile {
            margin-left: 20px;
        }

        main {
            padding: 20px;
        }
        .comment-form {
            margin-top: 20px;
            margin-bottom: 20px; 
        }


        .movie-details {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }

        .movie-details img {
            max-width: 200px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .movie-info {
            flex: 1;
        }

        .movie-info h2 {
            color: #333;
        }

        .movie-info p {
            color: #555;
        }

        .comments-section {
            margin-top: 20px;
        }

        .comments-section h3 {
            color: #333;
        }

        .comment {
            margin-bottom: 10px;
            color: #555;
        }

        .comment p {
            margin: 0;
        }

        .comment-form {
            margin-top: 20px;
        }

        .comment-form textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
        }

        .comment-form button {
            background-color: #4CAF50;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .comment-form button:hover {
            background-color: #45a049;
        }

        .rating-section {
            margin-top: 20px;
        }

        .rating-section h3 {
            color: #333;
        }


        .submit-rating {
            margin-top: 10px;
        }

        .submit-rating button {
            background-color: #4CAF50;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit-rating button:hover {
            background-color: #45a049;
            
        }
        
    </style>
</head>
<body>
    <header>
        <h1><a href="TelaInicial.jsp" style="color: white; text-decoration: none;">CineMais</a></h1>
        <nav>
            <input type="text" class="search-bar" placeholder="Pesquisar...">
            <a href="ConfPerfil.jsp" class="user-profile">
                Perfil do Usuario
            </a>
        </nav>
    </header>

    <main>
        <div class="movie-details">
            <img src="imagem-do-filme.jpg" alt="Nome do Filme">
            <div class="movie-info">
                <h2>Nome do Filme (Ano)</h2>
                <p>Sinopse do filme...</p>
            </div>
        </div>

        <div class="comments-section">
            <h3>Comentários</h3>
           
            <div class="comment-form">
                <textarea id="commentInput" placeholder="Escreva seu comentário"></textarea>
                <button onclick="addComment()">Adicionar Comentário</button>
            </div>
        </div>

        <div class="rating-section">
            <h3>Avaliação</h3>
            <div class="rating-selector">
                <label for="userRating">Selecione a avaliação:</label>
                <select id="userRating">
                    <option value="0.5">0.5</option>
                    <option value="1.0">1.0</option>
                    <option value="1.5">1.5</option>
                    <option value="2.0">2.0</option>
                    <option value="2.5">2.5</option>
                    <option value="3.0">3.0</option>
                    <option value="3.5">3.5</option>
                    <option value="4.0">4.0</option>
                    <option value="4.5">4.5</option>
                    <option value="5.0">5.0</option>
                </select>
            </div>
            <div class="submit-rating">
                <button onclick="submitRating()">Enviar Avaliação</button>
            </div>
        </div>
    
    </main>

>
       <script>
        function addComment() {
            var commentInput = document.getElementById('commentInput');
            var commentText = commentInput.value;

            if (commentText.trim() !== '') {
                var commentsSection = document.querySelector('.comments-section');
                var commentForm = document.querySelector('.comment-form');
                var commentDiv = document.createElement('div');
                commentDiv.classList.add('comment');
                commentDiv.innerjsp = '<p>' + 'Novo Usuário: ' + commentText + '</p>';
                commentsSection.insertBefore(commentDiv, commentForm);

                commentInput.value = '';
            }
        }
        function submitRating() {
            var selectedRating = document.getElementById('userRating').value;
            
            alert('Avaliação enviada: ' + selectedRating);
        }
    </script>
</body>
</html>
