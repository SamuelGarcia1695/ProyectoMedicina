/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.service.impl;


import java.util.List;
import mx.edu.um.fit.ProyectoMedicina.dao.PersonaDao;
import mx.edu.um.fit.ProyectoMedicina.model.Persona;
import mx.edu.um.fit.ProyectoMedicina.service.BaseService;
import mx.edu.um.fit.ProyectoMedicina.service.PersonaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Samuel
 */
@Service
public class PersonaServiceImpl extends BaseService implements PersonaService {
    
   @Autowired
    private PersonaDao personaDao;
   
   
     @Override
    public List<Persona> getAll() {
         return personaDao.getPersona(new Persona());
    }
   
   @Override
    public Persona getById(Long id) {
        return personaDao.get(id);
    }

    @Override
    public Persona save(Persona persona) {
        return personaDao.save(persona);
    }

  

    @Override
    public Persona update(Persona persona) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Persona delete(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
