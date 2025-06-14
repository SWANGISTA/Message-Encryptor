/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class viewAllstast extends HttpServlet {

    @EJB
    private StudentFacadeLocal sdt;
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        List<Student> allStudents = sdt.findAll();
        request.setAttribute("allstuds", allStudents);
        
        RequestDispatcher resMan = request.getRequestDispatcher("allStudents.jsp");
        resMan.forward(request, response);
        
        
    }


}
