<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String erro = request.getParameter("erro"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        
        .container{
            margin: 100px;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #login-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 49%;
            display: inline-block;
        }

        button:hover {
            background-color: #45a049;
        }

        a#cadastro {
            text-decoration: none;
            display: inline-block;
            width: 43%;
            text-align: center;
            padding: 10px;
            background-color: #4285f4;
            color: white;
            border-radius: 4px;
        }

        a#cadastro:hover {
            background-color: #2a54a3;
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
    </style>
</head>
<body>
	<header>
	    <h1>CineMais</h1>
	</header>
<div class="container">
    <form id="login-form" action="logar" method="post">
        <h2>Login</h2>
        <% if(erro != null && erro.equals("1")) { %>
        	<h4 style="color:red">Senha ou email errado!</h4>
        <% } %>
        <label for="username">Tipo:</label>
        <select id="type" name="type" required>
        	<option value="usuario">Usuário</option>
        	<option value="administrador">Administrador</option>
        </select>
        
        <label for="username">Nome de usuário:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Senha:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Entrar</button>
        <a id="cadastro" href="Cadastro.jsp">Cadastrar</a>
    </form>
</div>
</body>
</html>