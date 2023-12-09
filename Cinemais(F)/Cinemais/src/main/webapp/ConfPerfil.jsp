<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Configurações da Conta</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f8f4f4;
        }

        h1 {
            color: #333;
        }

        .user-info {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1><a href="TelaInicial.html" style="color: rgb(14, 2, 2); text-decoration: none;">Informações da Conta</a></h1>

    <div class="user-info">
        <label for="nome">Nome Pessoal:</label>
        <input type="text" id="nome" value="Nome do Usuário" disabled>

        <label for="email">Email:</label>
        <input type="email" id="email" value="usuario@email.com" disabled>

        <label for="senha">Senha:</label>
        <input type="password" id="senha" value="********" disabled>

        <label for="usuario">Nome de Usuário:</label>
        <input type="text" id="usuario" value="usuario123" disabled>
    </div>

    <button id="alterarDadosBtn">Alterar Dados</button>

    <script>
        document.getElementById('alterarDadosBtn').addEventListener('click', function() {
            
            document.getElementById('nome').disabled = false;
            document.getElementById('email').disabled = false;
            document.getElementById('senha').disabled = false;
            document.getElementById('usuario').disabled = false;

            
            document.getElementById('alterarDadosBtn').innerText = "Salvar Alterações";

            document.getElementById('alterarDadosBtn').removeEventListener('click', this);
            
            document.getElementById('alterarDadosBtn').addEventListener('click', function() {
    
                alert('Alterações salvas com sucesso!');
                
                document.getElementById('nome').disabled = true;
                document.getElementById('email').disabled = true;
                document.getElementById('senha').disabled = true;
                document.getElementById('usuario').disabled = true;

                document.getElementById('alterarDadosBtn').innerText = "Alterar Dados";

                window.location.href = "TelaInicial.jsp";
            });
        });
    </script>
</body>
</html>