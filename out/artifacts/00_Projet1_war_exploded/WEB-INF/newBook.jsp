<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nouveau livre</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mycss.css" rel="stylesheet">

    <!-- Validation textfield -->
    <script src="js/validationTextFields.js"></script>
</head>
<body>
<%@ include file="menu.jsp" %>
<main role="main" class="container">
    <div class="jumbotron">
        <h1 class="text-center">Nouveau livre</h1>
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <form method="post" action="newBook">
                    <div class="form-group">
                    <label>Titre </label>
                    <input type="text" class="form-control" placeholder="Titre" name="title" required>
                    </div>
                    <div class="form-group">
                        <label>Auteur </label>
                        <input type="text" class="form-control" placeholder="Auteur" name="author" required>
                    </div>
                    <div class="form-group">
                        <label>Editeur </label>
                        <input type="text" class="form-control" placeholder="Editeur" name="editor" required>
                    </div>
                    <div class="form-group">
                        <label>Annee </label>
                        <input id="txtNumber"  class="form-control"  placeholder="Année"  onkeypress="return isNumberKey(event)"   type="text" name="publicationDate" maxlength="4" required>
                    </div>
                <button class="btn btn-primary float-right" type="submit">Créer</button>
                </form>
            </div>
        </div>
    </div>
</main>

</div>
</body>
</head>
</html></html>
