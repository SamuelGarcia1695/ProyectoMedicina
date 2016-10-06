/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

/**
 *
 * @author Samuel
 */
@Configuration
@ComponentScan(basePackages = "mx.edu.um.fit.ProyectoMedicina")//configura las anotaciones, de las clases especiales
@PropertySource("file:${user.home}/.ProyectoMedicina.properties")
public class ComponentConfig {
    
}
