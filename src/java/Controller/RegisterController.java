/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Bean.Student;
import Dao.StudentDeclaration;
import Dao.StudentOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PURU
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String name, username, password,Acctype;
        name = req.getParameter("name");
        username = req.getParameter("username");
        Acctype=req.getParameter("Acctype");
        password = req.getParameter("password");
        Student st = new Student(name, username, password,Acctype);
        StudentDeclaration sd = new StudentOperation();
        long id = sd.insertStudent(st);
        if (id > 0) {
            resp.sendRedirect("home.jsp");
        }
        else{
            out.println("Wrong");
    }
}
}
