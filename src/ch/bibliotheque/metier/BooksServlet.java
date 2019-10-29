package ch.bibliotheque.metier;

import ch.bibliotheque.domaine.Book;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/books")
public class BooksServlet extends HttpServlet {
    @EJB
    private BookService service;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Book> books = service.listBooks();
        req.setAttribute("books",books);
        req.getRequestDispatcher("WEB-INF/listeLivres.jsp").forward(req,resp);
    }
}
