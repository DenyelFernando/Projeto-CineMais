<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineMais</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>CineMais</h1>
        <nav>
            <input type="text" class="search-bar" placeholder="Pesquisar...">
            <a href="ConfPerfil.html" class="user-profile">
                Perfil do Usuario
            </a>
        </nav>
    </header>

    <main>
        <div>
            <a href="Genero.html"><button id="generoBtn">Gênero</button></a>
            <a href="Avaliaçoes.html"><button id="avaliacoesBtn">Avaliações</button></a>
        </div>

        <h2>Filmes Lançamentos</h2>

        <div class="movies-container">
            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 1</h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 2</h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 3</h3>
                    <p>Avaliação: </p>
                    <p>Descrição do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 4</h3>
                    <p>Avaliação:</p>
                    <p>Descrição do filme...</p>
                </a>
            </div>
            <div>
            </div>
           
        </div>
        <a href="MostrarMaisLançamento.html"><button id="EmBrevebtn">Mostrar Mais</button></a>

        <div class="em-breve-section">
            <h2>Em Breve nos Cinemas</h2>

        
            <div class="movies-container">
                <div class="movie">
                    <h3>Filme em Breve 1</h3>
                    <p>Descrição do filme em breve...</p>
                </div>

                <div class="movie">
                    <h3>Filme em Breve 2</h3>
                    <p>Descrição do filme em breve...</p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 3</h3>
                    <p>Descrição do filme em breve...</p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 2</h3>
                    <p>Descrição do filme em breve...</p>
                </div>
            </div>
        </div>
        <a href="MostrarMaisEmBreve.html"><button id="Lançamentobtn">Mostrar Mais</button></a>

        <div class="mais-populares-section">
            <h2>Mais populares</h2>

           
            <div class="movies-container">
                <div class="movie">
                    <h3>Mais popular 1</h3>
                    <p>Descrição...</p>
                    <p>Ano: </p>

                </div>

                <div class="movie">
                    <h3>Mais popular 2</h3>
                    <p>Descrição...</p>
                    <p>Ano: </p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 3</h3>
                    <p>Descrição...</p>
                    <p>Ano: </p>

                </div>
                <div class="movie">
                    <h3>Filme em Breve 4</h3>
                    <p>Descrição...</p>
                    <p>Ano: </p>
                </div>
            </div>
        </div>

       <a href="MostrarMaisEmBreve" ></a><button id="mostrarMaisBtn">Mostrar Mais</button>
    </main>
</body>
</html>