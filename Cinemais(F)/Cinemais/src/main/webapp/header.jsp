<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<style>
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

</style>
</head>
<header>
	    <h1>CineMais</h1>
	    <form action="pesquisar" method="get">
	    	<input type="text" class="search-bar" placeholder="Pesquisar...">
	    </form>
	    <c:if test="${username != null}">
	    <a href= "#" class="user-profile" onclick="togglePerfilBox()">@${username}</a>
	    </c:if>
	    
	    <c:if test="${username == null}">
	    <a href= "Login.jsp" class="user-profile">Fazer login</a>
	    </c:if>
</header>
			<div id="perfilBox">
                <a href="Usuario.jsp">Nome do Usuário</a>
                <a href="ConfPerfil.jsp">Informações da Conta</a>
                <a href="Sair">Logout</a>
            </div>