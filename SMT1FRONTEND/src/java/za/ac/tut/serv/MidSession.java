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
public class MidSession extends HttpServlet {

   
    @EJB
    private StudentFacadeLocal sbl;
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session  = request.getSession();
        
        String module = request.getParameter("module");
        Double mark = Double.parseDouble(request.getParameter("mark"));
        String pred = sbl.predictor(mark);
        Long studnum = (Long) session.getAttribute("studnum");
        
         Student stud  = sbl.find(studnum);
         
         List<String> modules = stud.getModules();
         modules.add(module);
         
         List<Double> marks = stud.getMark();
         marks.add(mark);
         
         List<String>predicts = stud.getPrediction();
         predicts.add(pred);
         
         sbl.edit(stud);
         
         stud.setMark(marks);
         stud.setModules(modules);
         stud.setPrediction(predicts);
         
         request.setAttribute("student", stud);
        request.setAttribute("mark", mark);
        request.setAttribute("module", module);
        request.setAttribute("predictions", pred);
         
        RequestDispatcher resMan = request.getRequestDispatcher("predictionfolo.jsp");
        resMan.forward(request, response);
        
    }

}
