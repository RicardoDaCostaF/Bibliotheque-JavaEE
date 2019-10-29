package ch.bibliotheque.base;


import ch.bibliotheque.domaine.Book;
import ch.bibliotheque.metier.BookService;

import javax.ejb.EJB;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class BooksInit implements ServletContextListener {


    @EJB
    private BookService bookService;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        bookService.deleteAll();
        Book l1 = new Book("Une fille comme une autre", "Marc Levy", "MLivres", "2017");
        Book l2 = new Book("Le petit prince", "Antoine de Saint-Exupery", "ALivres", "1943");
        Book l3 = new Book("Le journal d'Anne Frank", "Anne Frank", "ALivres", "1947");
        bookService.save(l1);
        bookService.save(l2);
        bookService.save(l3);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //vide
    }

}
