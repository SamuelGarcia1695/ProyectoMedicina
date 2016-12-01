/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.dao.impl;

import java.util.List;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import mx.edu.um.fit.ProyectoMedicina.dao.BaseDao;
import mx.edu.um.fit.ProyectoMedicina.dao.PersonaDao;
import mx.edu.um.fit.ProyectoMedicina.model.Persona;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;




/**
 *
 * @author Samuel
 */

@Repository
@Transactional
public class PersonaDaoHibernate extends BaseDao implements PersonaDao{

    @Override
    public List<Persona> getPersona(Persona persona) {
          CriteriaBuilder criteriaBuilder = currentSession().getCriteriaBuilder();
        CriteriaQuery<Persona> criteriaQuery= criteriaBuilder.createQuery(Persona.class);
        Root<Persona> personaRoot = criteriaQuery.from(Persona.class);
        criteriaQuery.select(personaRoot);
        TypedQuery<Persona> typedQuery = currentSession().createQuery(criteriaQuery);
        List<Persona> personaList = typedQuery.getResultList();
        return personaList;
    }

    @Override
    public Persona get(Long id) {
         Persona persona = currentSession().get(Persona.class, id);
        return persona;
    }

    @Override
    public Persona save(Persona persona) {
       currentSession().save(persona);
      return persona;
    }

    @Override
    public Persona update(Persona persona) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(Long id) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
    }
}
