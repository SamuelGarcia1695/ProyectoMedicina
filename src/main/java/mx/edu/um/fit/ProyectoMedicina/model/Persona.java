/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.fit.ProyectoMedicina.model;

import java.util.Objects;
import javax.persistence.Entity;//
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

/**
 *
 * @author Samuel
 */
@Entity
public class Persona {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    @Version
    private Integer version;

    private String nombre;
    private String apellidop;
    private String apellidom;
    private String edad;
    private String sexo;

    /**
     * @return the Id
     */
    public Long getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(Long Id) {
        this.Id = Id;
    }

    /**
     * @return the version
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * @param version the version to set
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * @return the name
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the name to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellidop
     */
    public String getApellidop() {
        return apellidop;
    }

    /**
     * @param apellidop the name to set
     */
    public void setApellidop(String apellidop) {
        this.apellidop = apellidop;
    }

    /**
     * @return the apellidom
     */
    public String getApellidom() {
        return apellidom;
    }

    /**
     * @param apellidom the name to set
     */
    public void setApellidom(String apellidom) {
        this.apellidom = apellidom;
    }

    /**
     * @return the edad
     */
    public String getEdad() {
        return edad;
    }

    /**
     * @param edad the name to set
     */
    public void setEdad(String edad) {
        this.edad = edad;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the name to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 11 * hash + Objects.hash(this.Id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }

        if (getClass() != obj.getClass()) {
            return false;
        }

        final Persona other = (Persona) obj;
        return Objects.equals(this.Id, other.Id);
    }

    @Override
    public String toString() {
        return "{Persona{Id:" + this.Id + ", nombre:" + this.nombre + "}}";
    }

}
