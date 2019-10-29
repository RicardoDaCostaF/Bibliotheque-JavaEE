package ch.bibliotheque.metier;

import ch.bibliotheque.domaine.Book;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/book")
public class BookServlet extends HttpServlet {


    @EJB
    private BookService service;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String editor = req.getParameter("editor");
        String pubDate = req.getParameter("pubDate");
        Book book = new Book(title,author,editor,pubDate);
        service.save(book);
        resp.sendRedirect("/books");
    }
}
