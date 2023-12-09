<%@page import="br.com.facol.Cinemais.repository.UsuarioRepository"%>
<%@page import="br.com.facol.Cinemais.entities.Comentario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.facol.Cinemais.repository.ComentarioRepository"%>
<%@page import="br.com.facol.Cinemais.entities.Filme"%>
<%@page import="br.com.facol.Cinemais.repository.FilmeRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
    
    String id_filme = request.getParameter("id");
    Filme filme = FilmeRepository.buscarPorId(Integer.parseInt(id_filme));
    
    List<Comentario> comentarios = ComentarioRepository.listarComentariosPorFilme(id_filme);
    
    String username = (String) session.getAttribute("username");
    int idUsuario = UsuarioRepository.buscarUsuarioPorUsername(username).getId();
    
    String type = request.getParameter("type");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes do Filme</title>
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

#perfilBox {
    position: absolute;
    top: 60px;
    right: 10px;
    background-color: #fff;
    padding: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    display: none;
    z-index: 1000;
}

#perfilBox a {
    display: block;
    margin-bottom: 10px;
    text-decoration: none;
    color: #333;
}

#perfilBox a:hover {
    text-decoration: underline;
}

.search-bar {
    margin: 0 auto;
    width: 300px;
    padding: 8px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}
.hidden {
    display: none;
}
.options-container {
    margin-top: 10px;
}

.user-profile {
	padding: 10px;
    background-color: white;
    border-radius: 4px;
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
    <c:import url="header.jsp"/>

    <main>
        <div class="movie-details">
            <img src="img/padrao.jpg" alt="Nome do Filme">
            <div class="movie-info">
                <h2><% out.print(filme.getTitulo()); %> (<% out.print(filme.getAno()); %>)</h2>
                <p>Sinopse: <% out.print(filme.getDescricao()); %></p>
            </div>
        </div>

        <div class="comments-section">
            <h3>Comentários</h3>
            <% if (comentarios.isEmpty()){ %>
            <h4>Não há comentarios ainda...</h4>
            <% } else { %>
            	<% for (Comentario comentario : comentarios){ %>
	            <div class="comentario">
		           	<h4><% out.print("@"+UsuarioRepository.buscarUsuarioPorId(comentario.getIdUsuario()).getNomeUsuario()); %></h4>
		           	<p><% out.print(comentario.getComentario()); %></p>
	           	</div>
	           	<% } %>
           	<% } %>
           	<% if(username != null || type != null && type != "administrador"){ %>
           	<form action="salvarComentario" method="post" class="comment-form">
           		<input type="hidden" name="id_usuario" value="<% out.print(idUsuario); %>">
           		<input type="hidden" name="id_filme" value="<% out.print(id_filme); %>">
                <textarea id="comment" name="comentario" placeholder="Escreva seu comentário"></textarea>
                <button>Adicionar Comentário</button>
            </form>
            <% } %>
        </div>

		<% if(username != null || type != null && type != "administrador"){ %>
        <div class="rating-section">
            <h3>Avaliação</h3>
            <form action="salvarAvaliacao" method="post">
            <div class="rating-selector">
                <label for="userRating">Selecione a avaliação:</label>
                
                <input type="hidden" name="id_usuario" value="<% out.print(idUsuario); %>">
           		<input type="hidden" name="id_filme" value="<% out.print(id_filme); %>">
                <select id="userRating" name="userRating">
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
                <button>Enviar Avaliação</button>
            </div>
            </form>
        </div>
        <% } %>
    
    </main>
</body>
</html>