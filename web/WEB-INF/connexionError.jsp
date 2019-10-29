<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Bienvenue dans votre bibliothèque</title>
</head>
<body>
<%@ include file="menuNoBtnCo.jsp" %>
<main role="main" class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-4 offset-md-4">
            <form method="post" action="j_security_check">
                <div class="form-group">
                    <label for="exampleInputEmail1">Indentifiant </label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Indentifiant" name="j_username">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Mot de passe</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Mot de passe" name="j_password" >
                </div>
                <button type="submit" class="btn btn-primary">Connexion</button>
            </form>
                <small id="passwordHelp" class="text-danger">Identifiant ou mot de passe incorrect !</small>
            </div>
        </div>
    </div>
</main>
</body>
</head>
</html>
