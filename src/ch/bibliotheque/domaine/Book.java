package ch.bibliotheque.domaine;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.servlet.http.HttpServlet;

import static javax.persistence.GenerationType.AUTO;

@Entity
public class Book extends HttpServlet {

    @Id
    @GeneratedValue(strategy = AUTO)
    private Long id;
    private String title;
    private String author;
    private String editor;
    private String publicationDate;

    public Book() {}
    public Book(String title, String author, String editor, String publicationDate) {
        this.title = title;
        this.author = author;
        this.editor = editor;
        this.publicationDate = publicationDate;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEditor() {
        return editor;
    }

    public void setEditor(String isbn) {
        this.editor = isbn;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    @Override
    public String toString() {
        return "Book : title = " + title + " author=" + author + "editor="+editor+ " publicationDate = " + publicationDate ;
    }
}
