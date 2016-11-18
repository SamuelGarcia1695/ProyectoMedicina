/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 *
 * @author Samuel
 */

@Controller
@RequestMapping("/persona")
public class PersonaController extends BaseController{
    
    @RequestMapping("/nuevo")
    public String nuevaPersona(Model model){
    return"/persona/nuevo";
    }
}
