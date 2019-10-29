package ch.bibliotheque.metier;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet("/jpa")
public class JpaServlet  extends HttpServlet {

    @Resource
    private DataSource ds;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ds = "+ ds);
    }

    //jdbc:hsqldb:file:/Users/kevin/Library/Caches/IntelliJIdea2018.2/tomcat/TomEE_7_1_0_00-Projet1/data/hsqldb/hsqldb
}
