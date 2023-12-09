<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="ISO-8859-1">
	<title>Usuário</title>
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
    </style>
</head>
<body>
    <header>
        <h1><a href="TelaInicial.jsp" style="color: white; text-decoration: none;">CineMais</a></h1>
        <nav>
            <input type="text" class="search-bar" placeholder="Pesquisar...">
        </nav>
    </header>

    <main>
        <h2>Informações do Usuário</h2>
        <p><strong>Nome de Usuário:</strong> <span id="username">Nome de Usuário</span></p>
        <p><strong>Nome Pessoal:</strong> <span id="personalName">Nome Pessoal</span></p>
        <p><strong>Email:</strong> <span id="email">email@example.com</span></p>

        <h2>Filmes Avaliados</h2>
        <div class="movies-container" id="userMovies">
        </div>
    </main>

    <script>
        var userData = {
            username: "NomeUsuario123",
            personalName: "Nome da pessoa",
            email: "pessoa@gmail.com",
            movies: [
                { title: "Filme: ", description: "Descrição do Filme " },
                { title: "Filme: ", description: "Descrição do Filme " },
                { title: "Filme: ", description: "Descrição do Filme " },
                { title: "Filme: ", description: "Descrição do Filme " },
                
            ]
        };

    
        document.getElementById("username").textContent = userData.username;
        document.getElementById("personalName").textContent = userData.personalName;
        document.getElementById("email").textContent = userData.email;

        
        var moviesContainer = document.getElementById("userMovies");
        userData.movies.forEach(function(movie) {
            var movieElement = document.createElement("div");
            movieElement.classList.add("movie");

            var linkElement = document.createElement("a");
            linkElement.href = "Selecionado.html"; 

            var titleElement = document.createElement("h3");
            titleElement.textContent = movie.title;

            var descriptionElement = document.createElement("p");
            descriptionElement.textContent = movie.description;

            linkElement.appendChild(titleElement);
            linkElement.appendChild(descriptionElement);
            movieElement.appendChild(linkElement);
            moviesContainer.appendChild(movieElement);
        });
    </script>
</body>
</html>