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
        .hidden {
            display: none;
        }

        .search-bar {
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

        h2 {
            color: #333;
        }

        .movies-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .movie {
            cursor: pointer; 
            flex: 0 0 calc(19.6% - 20px);
            background-color: #fff;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .movie a { 
            text-decoration: none;
            color: #333;
        }

        .movie:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
            align-self: flex-end;
        }

        button:hover {
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
        <div>
            <button id="generoBtn" onclick="toggleOptions('generoOptions')">Gênero</button>
            <div id="generoOptions" class="options-container hidden">
                <a href="Açao.jsp" onclick="selectGenre('AÃ§Ã£o')">AÃ§Ã£o</a>
                <a href="Aventura.jsp" onclick="selectGenre('Aventura')">Aventura</a>
                <a href="Comedia.jsp" onclick="selectGenre('Comédia')">Comédia</a>
            </div>
            <a href="avaliaÃ§oes.jsp"><button id="avaliacoesBtn">Avaliações</button></a>
        

        <h2>Filmes mais populares</h2>

       <div class="movies-container">
            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação:</p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>


            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Selecionado.jsp">
                    <h3>Nome do Filme </h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
        </div>

       

        <button id="mostrarMaisBtn">Mostrar Mais</button>
    </main>
    <script>
        function toggleOptions(optionsId) {
            var options = document.getElementById(optionsId);
            options.classList.toggle('hidden');
        }
    </script>
   
</body>
</html>
