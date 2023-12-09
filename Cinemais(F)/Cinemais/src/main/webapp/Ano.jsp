<%@page import="br.com.facol.Cinemais.entities.Filme"%>
<%@page import="java.util.List"%>
<%@page import="br.com.facol.Cinemais.repository.FilmeRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <% List<Filme> filmes; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ano</title>
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

        .user-profile {
            margin-left: 20px;
        }

        main {
            padding: 20px;
        }
        .hidden {
            display: none;
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

            <a href="Avaliacoes.jsp"><button id="AvaliaçaoBtn">Avaliação</button></a>

        <h2>2023 - 2020</h2>

        <div class="movies-container">
        
        <% filmes = FilmeRepository.listarEntreAnos(2020, 2023); %>
        <% if(filmes.isEmpty()) { %>
        	<h4>Filmes não encontrados</h4>
        <% } %>
        
        <% for(Filme filme : filmes){ %>
            <div class="movie">
                <a href="Filme.jsp?id=<% out.print(filme.getId()); %>">
                    <h3><% out.print(filme.getTitulo()); %></h3>
                    <p>Avaliação:4.5 </p>
                    <p>Ano: <% out.print(filme.getAno()); %> </p>
                </a>
            </div>
		<% } %>
         </div>
        <a href="Mostrar232"></a><button id="mostrar2320Btn">Mostrar Mais</button>

        
            <h2>2019 - 2010</h2>

        
            <div class="movies-container">
        <% filmes = FilmeRepository.listarEntreAnos(2010, 2019); %>
        <% if(filmes.isEmpty()) { %>
        	<h4>Filmes não encontrados</h4>
        <% } %>
        
        <% for(Filme filme : filmes){ %>
            <div class="movie">
                <a href="Filme.jsp?id=<% out.print(filme.getId()); %>">
                    <h3><% out.print(filme.getTitulo()); %></h3>
                    <p>Avaliação:4.5 </p>
                    <p>Ano: <% out.print(filme.getAno()); %> </p>
                </a>
            </div>
		<% } %>
            </div>
        <button id="mostrarMaisBtn">Mostrar Mais</button>


        <h2>2009 - 2000</h2>

        
        <div class="movies-container">
            <% filmes = FilmeRepository.listarEntreAnos(2000, 2009); %>
        <% if(filmes.isEmpty()) { %>
        	<h4>Filmes não encontrados</h4>
        <% } %>
        
        <% for(Filme filme : filmes){ %>
            <div class="movie">
                <a href="Filme.jsp?id=<% out.print(filme.getId()); %>">
                    <h3><% out.print(filme.getTitulo()); %></h3>
                    <p>Avaliação:4.5 </p>
                    <p>Ano: <% out.print(filme.getAno()); %> </p>
                </a>
            </div>
		<% } %>
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