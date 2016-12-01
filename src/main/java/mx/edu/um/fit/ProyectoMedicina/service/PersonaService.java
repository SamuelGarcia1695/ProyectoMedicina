/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.service;

import java.util.List;
import mx.edu.um.fit.ProyectoMedicina.model.Persona;

/**
 *
 * @author Samuel
 */
public interface PersonaService {
   
    public List<Persona> getAll();
    public Persona getById(Long id);
    public Persona save(Persona persona);
    public Persona update(Persona persona);
    public Persona delete(Long id);
}
