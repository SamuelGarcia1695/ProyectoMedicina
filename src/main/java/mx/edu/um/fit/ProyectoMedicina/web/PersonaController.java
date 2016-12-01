/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import mx.edu.um.fit.ProyectoMedicina.model.Persona;
import mx.edu.um.fit.ProyectoMedicina.service.PersonaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Samuel
 */
@Controller
@RequestMapping("/persona")
public class PersonaController extends BaseController {
    
    @Autowired
    private PersonaService personaService;

    @RequestMapping("/nuevo")

    public String nuevaPersona(Model model) {

        Persona persona = new Persona();
        log.debug("Nueva persona...");

        model.addAttribute("persona", persona);
        return "/persona/nuevo";

    }
    
    @RequestMapping("/crear")
    public String create(HttpServletRequest request, @Valid Persona persona, BindingResult bindingResult, Errors errors, Model model, RedirectAttributes redirectAttributes) {
       log.debug("Crear persona...");
       
        if (bindingResult.hasErrors()) {
            log.error("Error detectado en el formulario...");
            model.addAttribute("crear", persona);
           
            return "/persona/nuevo";
        }
        
        log.debug("Datos enviados: " + persona.toString());
        Persona p = personaService.save(persona);   
        redirectAttributes.addFlashAttribute("Persona creada");
        redirectAttributes.addFlashAttribute(new String[]{persona.getNombre()});

        return "redirect:/persona/lista";
        
    }
    
    @RequestMapping("/lista")
    public String lista(Model model){
       
   List<Persona> lista= personaService.getAll();
   
   model.addAttribute("lista",lista);
   return "/persona/lista";
   } 
    
}



    

