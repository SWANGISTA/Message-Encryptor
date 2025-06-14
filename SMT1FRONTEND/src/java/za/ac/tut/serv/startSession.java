/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class startSession extends HttpServlet {

   @EJB
   private StudentFacadeLocal sbl;
  @Override  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        HttpSession session = request.getSession(true);
        
        String name = request.getParameter("name");
        Long studNum = Long.parseLong(request.getParameter("studNum"));
        Double mark = Double.parseDouble(request.getParameter("mark"));
        String module = request.getParameter("module");
        
        String pred = sbl.predictor(mark);
        
        
        Student stud = new Student();
        stud.setId(studNum);
        stud.setName(name);
        List<Double> marks = new ArrayList<>();
        marks.add(mark);
        stud.setMark(marks);
        List<String> modules = new ArrayList<>();
        modules.add(module);
        stud.setModules(modules);
        List<String> predictions = new ArrayList<>();
        predictions.add(pred);
        stud.setPrediction(predictions);
        
        sbl.create(stud);
        
        session.setAttribute("name", name);
        session.setAttribute("studnum", studNum);
        
        request.setAttribute("student", stud);
        request.setAttribute("mark", mark);
        request.setAttribute("module", module);
        request.setAttribute("predictions", pred);
        
        RequestDispatcher resMan = request.getRequestDispatcher("predictionfolo.jsp");
        resMan.forward(request, response);
        
        
    }

    
}
