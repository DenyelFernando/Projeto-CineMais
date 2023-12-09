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
            <a href="Genero.html"><button id="generoBtn">G�nero</button></a>
            <a href="Avalia�oes.html"><button id="avaliacoesBtn">Avalia��es</button></a>
        </div>

        <h2>Filmes Lan�amentos</h2>

        <div class="movies-container">
            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 1</h3>
                    <p>Avalia��o: </p>
                    <p>Descri��o do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 2</h3>
                    <p>Avalia��o: </p>
                    <p>Descri��o do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 3</h3>
                    <p>Avalia��o: </p>
                    <p>Descri��o do filme...</p>
                </a>
            </div>

            <div class="movie">
                <a href="Filmes.html">
                    <h3>Nome do Filme 4</h3>
                    <p>Avalia��o:</p>
                    <p>Descri��o do filme...</p>
                </a>
            </div>
            <div>
            </div>
           
        </div>
        <a href="MostrarMaisLan�amento.html"><button id="EmBrevebtn">Mostrar Mais</button></a>

        <div class="em-breve-section">
            <h2>Em Breve nos Cinemas</h2>

        
            <div class="movies-container">
                <div class="movie">
                    <h3>Filme em Breve 1</h3>
                    <p>Descri��o do filme em breve...</p>
                </div>

                <div class="movie">
                    <h3>Filme em Breve 2</h3>
                    <p>Descri��o do filme em breve...</p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 3</h3>
                    <p>Descri��o do filme em breve...</p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 2</h3>
                    <p>Descri��o do filme em breve...</p>
                </div>
            </div>
        </div>
        <a href="MostrarMaisEmBreve.html"><button id="Lan�amentobtn">Mostrar Mais</button></a>

        <div class="mais-populares-section">
            <h2>Mais populares</h2>

           
            <div class="movies-container">
                <div class="movie">
                    <h3>Mais popular 1</h3>
                    <p>Descri��o...</p>
                    <p>Ano: </p>

                </div>

                <div class="movie">
                    <h3>Mais popular 2</h3>
                    <p>Descri��o...</p>
                    <p>Ano: </p>
                </div>
                <div class="movie">
                    <h3>Filme em Breve 3</h3>
                    <p>Descri��o...</p>
                    <p>Ano: </p>

                </div>
                <div class="movie">
                    <h3>Filme em Breve 4</h3>
                    <p>Descri��o...</p>
                    <p>Ano: </p>
                </div>
            </div>
        </div>

       <a href="MostrarMaisEmBreve" ></a><button id="mostrarMaisBtn">Mostrar Mais</button>
    </main>
</body>
</html>