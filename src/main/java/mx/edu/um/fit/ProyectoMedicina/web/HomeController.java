/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Samuel
 */
@Controller
public class HomeController extends BaseController {
    
    @RequestMapping({"/","/home","inicio"})
     public String home (HttpServletRequest request){
         log.debug("Loading home page");
     return "home/index";
     }
}
