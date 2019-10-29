<%@ page import="ch.bibliotheque.metier.LoginServlet" %><%--
  Created by IntelliJ IDEA.
  User: kevin
  Date: 16.11.18
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mycss.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark menuBarre">
    <a class="navbar-brand" href="<%=request.getContextPath() + "/accueil"%>">App Bibliothèque</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" id="linkBook" href="<%=request.getContextPath() + "/books"%>">Livres <span class="sr-only"></span></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <% if (!request.isUserInRole("ADMIN")) { %>
                <a class="btn btn-light" id="btnCon" href="<%=request.getContextPath() + "/login"%>" role="button">Connexion</a>
            <% } %>
            <% if (request.isUserInRole("ADMIN")) {  %>
            <a class="btn btn-light" href="<%=request.getContextPath() + "/logout"%>" role="button">Déconnexion</a>
            <% } %>
        </form>
    </div>
</nav>

</body>
</html>
