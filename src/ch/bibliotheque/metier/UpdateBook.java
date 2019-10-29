package ch.bibliotheque.metier;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateBook")
public class UpdateBook extends HttpServlet {

    @EJB
    private BookService bookService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String editor = req.getParameter("editor");
        String publicationDate = req.getParameter("publicationDate");

        bookService.update(id,title,author,editor,publicationDate);
        resp.sendRedirect("books");
    }
}
