<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="ISO-8859-1">
	<title>Avaliações</title>
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
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .hidden {
            display: none;
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
            cursor: pointer; /* Adicionado para indicar que é clicável */
            flex: 0 0 calc(19.6% - 20px);
            background-color: #fff;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .movie a { /* Estilo para o link dentro da caixa do filme */
            text-decoration: none;
            color: #333;
        }

        .movie:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Efeito de elevação no hover */
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

        .terror-section {
            margin-top: 40px;
        }
        .ação-section {
            margin-top: 40px;
        }
        .comédia-section {
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <c:import url="header.jsp"/> 

    <main>
        	<div>
            <button id="generoBtn" onclick="toggleOptions('generoOptions')">Gênero</button>
            <div id="generoOptions" class="options-container hidden">
                <a href="Açao.jsp" onclick="selectGenre('Ação')">Ação</a>
                <a href="Aventura.jsp" onclick="selectGenre('Aventura')">Aventura</a>
                <a href="Comedia.jsp" onclick="selectGenre('Comédia')">Comédia</a>
            </div>

            <a href="Ano.jsp"><button id="AnooBtn">Ano</button></a>

        <h2>5.0 - 4.5</h2>

        <div class="movies-container">
            <div class="movie">
                <a href="Filme.jsp">
                    <h3>Vingadores:Ultimato</h3>
                    <p>Ano:2019 </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filme.jsp">
                    <h3>Oppenheimer</h3>
                    <p>Ano:2023 </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filme.jsp">
                    <h3>Five Nights at Freddy's</h3>
                    <p>Ano:2023 </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filme.jsp">
                    <h3>Super Mario Bros. O Filme</h3>
                    <p>Ano:2023 </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
        </div>
        <button id="mostrarMaisBtn">Mostrar Mais</button>

        <div class="terror-section">
            <h2>4.0 - 3.0</h2>

            <div class="movies-container">
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>O Poderoso Chefão</h3>
                        <p>Ano:2007 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>A Lista de Schindler</h3>
                        <p>Ano:2000 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>Clube da Luta</h3>
                        <p>Ano:2000 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>A Felicidade Não Se Compra</h3>
                        <p>Ano:2000 </p>
                        <p>Descrição do filme...</p>
                    </a>
            </div>
        </div>

        <button id="mostrarMaisBtn">Mostrar Mais</button>
        <div class="terror-section">
            <h2>2.5 - 0.5</h2>

        
            <div class="movies-container">
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>Alone in the Dark: O Despertar do Mal</h3>
                        <p>Ano:2005 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>O Filho do Máskara</h3>
                        <p>Ano:2005 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>Universidade do Prazer</h3>
                        <p>Ano:2008 </p>
                        <p>Descrição do filme...</p>
                    </a>
                </div>
    
                <div class="movie">
                    <a href="Filme.jsp">
                        <h3>Salvando o Natal</h3>
                        <p>Ano:2017 </p>
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