/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author USER
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "SemeterTest1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public String predictor(Double mark) {
    
        String pred = "fail is predicted";
        
        if(mark>50 && mark < 60)
        {
        
        pred = "Sup is predicted";
        }else if(mark > 59)
        {
        pred = "pass is predicted";
        }
        return pred;
    
    }
    
}
