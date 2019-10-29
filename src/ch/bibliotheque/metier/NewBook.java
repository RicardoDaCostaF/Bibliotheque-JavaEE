package ch.bibliotheque.metier;

import ch.bibliotheque.domaine.Book;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/newBook")
public class NewBook extends HttpServlet {

    @EJB
    private BookService bookService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/newBook.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Book book = getBook(req);
        bookService.save(book);
        resp.sendRedirect("books?notification=newBookAdded");
    }

    private Book getBook(HttpServletRequest req) {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String editor = req.getParameter("editor");
        String publicationDate = req.getParameter("publicationDate");
        return new Book(title,author,editor,publicationDate);
    }
}
