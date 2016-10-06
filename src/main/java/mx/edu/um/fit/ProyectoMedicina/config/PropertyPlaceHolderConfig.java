/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

/**
 *
 * @author Samuel
 */@Configuration
 @PropertySource("file:${user.home}/.ProyectoMedicina.properties")//Para que no sea publico
public class PropertyPlaceHolderConfig {
    @Bean 
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer(){ 
    return new PropertySourcesPlaceholderConfigurer();
    } 
}
