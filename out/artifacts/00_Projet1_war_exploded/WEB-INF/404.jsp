<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Erreur 404</title>

    <meta charset="UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mycss.css" rel="stylesheet">
</head>
<body>
<div class="page-wrap d-flex flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">404</span>
                <div class="mb-4 lead">L'url que vous avez demandée n'est pas valide. Veuillez vérifier que cette adresse existe bien.</div>
                <a href="<%=request.getContextPath() + "/accueil"%>" class="btn btn-link">Accueil</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
