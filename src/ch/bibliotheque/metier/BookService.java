package ch.bibliotheque.metier;

import ch.bibliotheque.domaine.Book;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

@Stateless
public class BookService {

    @PersistenceContext
    private EntityManager em;

    public List<Book> listBooks() {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Book> cq = cb.createQuery(Book.class);
        cq.from(Book.class);
        TypedQuery<Book> q = em.createQuery(cq);
        List<Book> books = q.getResultList();
        return books;
    }

    public void save(Book b){
        em.persist(b);
    }

    public void deleteBook(int id) {
        Book book = em.find(Book.class, id);
        em.remove(book);

    }

    public void update(int id,String title,String author,String editor,String publicationDate){
        Book book = em.find(Book.class, id);
        book.setTitle(title);
        book.setAuthor(author);
        book.setEditor(editor);
        book.setPublicationDate(publicationDate);
        em.merge(book);
    }

    public int deleteAll(){
         int deletedCount = em.createQuery("DELETE FROM Book").executeUpdate();
        return deletedCount;
    }
}
