<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>Erreur 500</title>

        <meta charset="UTF-8">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/mycss.css" rel="stylesheet">
    </head>
</head>
<body>
<div class="page-wrap d-flex flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">500</span>
                <div class="mb-4 lead">Une erreur est survenue, veuillez revenir plus tard.</div>
                <a href="<%=request.getContextPath() + "/accueil"%>" class="btn btn-link">Accueil</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
