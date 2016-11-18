/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.dao;

/**
 *
 * @author Samuel
 */
import java.util.List;
import mx.edu.um.fit.ProyectoMedicina.model.Persona;


public interface PersonaDao {
    
    public List<Persona> getPersona(Persona persona);
    public Persona get(Long id);
    public Persona save(Persona persona);
    public Persona update(Persona persona);
    public String delete(Long id);
    
}
