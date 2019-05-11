/*
/ * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package Controller;

import Bean.Student;
import Dao.StudentOperation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

///**
// *
// * @author hardik
// */
public class logservlet extends HttpServlet {

    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            System.out.println("In logServlet");
            
            /* TODO output your page here. You may use following sample code. */
            int uname=Integer.parseInt(request.getParameter("uname"));
            String pwd=request.getParameter("pwd");
            String usertype1=request.getParameter("acctype");
        // System.out.println(uname);
         //System.out.println(pwd);
            Student u=new Student();
            u.setS_id(uname);
            u.setPassword(pwd);
         
            u.setAcctype(usertype1);
          StudentOperation access=new StudentOperation();
          if(access.check(u)){
              HttpSession session=request.getSession();
              session.setAttribute("username",uname);
              switch(usertype1){
                  case "Admin":
                  {
                   RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
                   rd.forward(request,response);
              break;
                  }
                  case "Student":{
                   RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
                   rd.forward(request,response);
                   break;
                  }
                  case "teacher":{
                   RequestDispatcher rd=request.getRequestDispatcher("HomeST.html");
                   rd.forward(request,response);
                   break;
                  }
              }
          }
          else{
              response.sendRedirect("index.html");
          }
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
    * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
