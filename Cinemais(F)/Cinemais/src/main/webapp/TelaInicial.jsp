<%@page import="br.com.facol.Cinemais.repository.FilmeRepository"%>
<%@page import="br.com.facol.Cinemais.entities.Filme"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String tipo = (String) session.getAttribute("tipo");
String username = (String) session.getAttribute("username");
List<Filme> filmes;
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineMais</title>
    <link rel="stylesheet" href="css/tela-inicial.css">
</head>
<body>
    <c:import url="header.jsp"/>
    
    <main>
    	<c:if test="${tipo != null && tipo == 'administrador'}">
    	<h2>Adicionar Filme</h2>
        <div class="add-movie-form">
            <form id="movieForm" action="cadastrarFilme" method="post">
                <label for="movieName">Nome do Filme:</label>
                <input type="text" id="movieName" name="movieName" required>

                <label for="movieYear">Ano:</label>
                <input type="number" id="movieYear" name="movieYear" required>

                <label for="movieDescription">Descrição:</label>
                <textarea id="movieDescription" name="movieDescription" required></textarea>
                
                <label for="movieGenre">Gênero:</label><br>
                <select id="movieGenre" name="movieGenre" >
                	<option value="">Selecionar gênero</option>
                	<option value="acao">Ação</option>
                	<option value="aventura">Aventura</option>
                	<option value="comedia">Comédia</option>
                </select><br>

                <button type="submit">Adicionar Filme</button>
            </form>
            <script>
            const form = document.getElementById('movieForm');
            form.addEventListener('submit', function(event) {
              const genre = document.getElementById('movieGenre').value;
              if (genre === '') {
                alert('Por favor, selecione um gênero.');
                event.preventDefault();
              }
            });
            </script>
        </div>
        </c:if>
        
        <div>
            <button id="generoBtn" onclick="toggleOptions('generoOptions')">Gênero</button>
            <div id="generoOptions" class="options-container hidden">
                <a href="Açao.jsp" onclick="selectGenre('Ação')">Ação</a>
                <a href="Aventura.jsp" onclick="selectGenre('Aventura')">Aventura</a>
                <a href="Comedia.jsp" onclick="selectGenre('Comédia')">Comédia</a>
            </div>

            <a href="Avaliacoes.jsp"><button id="AvaliaçaoBtn">Avaliação</button></a>

        <h2>Filmes Lançamentos</h2>

        <div class="movies-container">
            <% filmes = FilmeRepository.listarPorAno(2023); %>
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
        <a href="MostrarMaisLançamento.jsp"><button id="EmBrevebtn">Mostrar Mais</button></a>

        
            <h2>Em Breve nos Cinemas</h2>

        
            <div class="movies-container">
	        <% filmes = FilmeRepository.listarEntreAnos(2024, 2028); %>
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
        </div>
        <a href="MostrarMaisEmBreve.jsp"><button id="Lançamentobtn">Mostrar Mais</button></a>

        <div class="mais-populares-section">
            <h2>Mais populares</h2>

           
            <div class="movies-container">
                <div class="movie">
                    <a href="Filme.jsp">
                    <h3>Vingadores:Ultimato</h3>
                    <p>Descrição...</p>
                    <p>Ano:2019 </p>
                    </a>

                </div>

                <div class="movie">
                    <a href="Filme.jsp">
                    <h3>Adão Negro</h3>
                    <p>Descrição...</p>
                    <p>Ano:2022 </p>
                    </a>
                </div>
                <div class="movie">
                    <a href="Filme.jsp">
                    <h3>Liga da Justiça</h3>
                    <p>Descrição...</p>
                    <p>Ano:2017 </p>
                </a>
                </div>
                <div class="movie">
                    <a href="Filme.jsp">
                    <h3>50 tons de preto</h3>
                    <p>Descrição...</p>
                    <p>Ano:2015 </p>
                </a>
                </div>
            </div>
        </div>

       <a href="MostrarMaisPopulares.jsp" ><button id="mostrarMaisBtn">Mostrar Mais</button></a>

       <div class="mais-avaliados-section">
        <h2>Mais Bem Avaliados</h2>

       
        <div class="movies-container">
            <div class="movie">
                <a href="Filme.jsp">
                <h3>Vingadores:Ultimato</h3>
                <p>Descrição...</p>
                <p>Ano:2019 </p>
            </a>
            </div>

            <div class="movie">
                <a href="Filme.jsp">
                <h3>Homem aranha</h3>
                <p>Descrição...</p>
                <p>Ano:2002 </p>
            </a>
            </div>
            <div class="movie">
                <a href="Filme.jsp">
                <h3>Velozes e Furiosos</h3>
                <p>Descrição...</p>
                <p>Ano:2003 </p>
            </a>

            </div>
            <div class="movie">
                <a href="Filme.jsp">
                <h3>Operação Big Hero</h3>
                <p>Descrição...</p>
                <p>Ano:2014 </p>
            </a>
            </div>
        </div>
    </div>
    <a href="MostrarMaisAvaliados.jsp" ><button id="mostrarMaisBtn">Mostrar Mais</button> </a>   
       
    </main>

    <script>
         function togglePerfilBox() {
            var perfilBox = document.getElementById('perfilBox');
            perfilBox.style.display = (perfilBox.style.display === 'block') ? 'none' : 'block';
        }

        function toggleOptions(optionsId) {
            var options = document.getElementById(optionsId);
            options.classList.toggle('hidden');
        }
    </script>
</body>
</html>