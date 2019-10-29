<%@ page import="ch.bibliotheque.domaine.Book" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mycss.css" rel="stylesheet">

    <!-- Validation textfield -->
    <script src="js/validationTextFields.js"></script>

    <title>Liste livres</title>
    <script>
        function submitform() {
                alert("Votre modification a été prise en compte !");
        }

    </script>
</head>
<%@ include file="menu.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <% String notificationPar = request.getParameter("notification");
                if(notificationPar != null && notificationPar.equals("newBookAdded")){
            %>
                 <%@include file="notification.jsp" %>
            <%
                }
            %>
            <% List<Book> books =(List) request.getAttribute("books");%>
            <table class="table table-striped custab">
                <thead>
                <tr>
                    <th>Titre</th>
                    <th>Auteur</th>
                    <th>Editeur</th>
                    <th>Année</th>
                    <% if (request.isUserInRole("ADMIN")) { %>
                    <th></th>
                    <th></th>
                    <%  } %>
                </tr>
                </thead>
                <tbody>
                <% for (Book book : books) {%>
                <tr>
                    <% if (request.isUserInRole("ADMIN")) { %>
                    <form method="post" action="updateBook" id="myForm">
                        <input  type="hidden" name="id" value="<%= book.getId() %>">
                    <td>
                        <div class="form-group">
                            <input type="text"  class="form-control" value="<%= book.getTitle() %>" name="title" required >
                        </div>
                    </td>
                    <td>
                        <div class="form-group">
                        <input type="text" class="form-control" value="<%= book.getAuthor()%>" name="author" required >
                        </div>
                    </td>

                    <td>
                        <div class="form-group">
                        <input type="text"  class="form-control" value="<%= book.getEditor()%>" name="editor" required >
                        </div>

                    </td>
                    <td>
                        <div class="form-group">
                        <input id="txtNumber"  class="form-control"  value="<%= book.getPublicationDate()%>" onkeypress="return isNumberKey(event)" type="text" name="publicationDate" maxlength="4" required>
                        </div>

                    </td>
                    <td class="">
                        <div class="form-group">
                        <input class="btn btn-primary btn-xs " type="submit" value="Modifier" onclick="submitform()">
                        </div>
                    </td>
                    </form>
                    <%  }else{ %>
                    <td><%= book.getTitle()%></td>
                    <td><%= book.getAuthor()%></td>
                    <td><%= book.getEditor()%></td>
                    <td><%= book.getPublicationDate()%></td>
                    <%  } %>
                    <% if (request.isUserInRole("ADMIN")) { %>
                    <td class="text-center">
                    <form method="post" action="deleteBook">
                        <input type="hidden" name="id" value="<%= book.getId() %>">
                        <input class="btn btn-danger btn-xs" type="submit" value="Supprimer" />
                    </form>
                    </td>
                    <%  } %>
                </tr>
                <% };%>

                </tbody>
            </table>
            <% if (request.isUserInRole("ADMIN")) { %>
            <form method="get" action="newBook">
                <input class="btn btn-primary btn-xs float-right" type="submit" value="Nouveau" />
            </form>
            <%  } %>

        </div>
    </div>
</div>

</head>
</html>