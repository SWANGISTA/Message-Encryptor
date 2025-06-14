/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.serv;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.Student;
import za.ac.tut.StudentFacadeLocal;

/**
 *
 * @author USER
 */
public class endSession extends HttpServlet {

   @EJB
   private StudentFacadeLocal std;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        Long id = (Long)session.getAttribute("studnum");
        
        Student stud = std.find(id);
        request.setAttribute("stud", stud);
        session.invalidate();
        
        
        RequestDispatcher resMan = request.getRequestDispatcher("viewAllPredForUser.jsp");
        resMan.forward(request, response);
    }

}
