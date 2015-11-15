// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.DomicilioPersonaFisica;
import com.alliance.sam.DomicilioPersonaJuridica;
import com.alliance.sam.Localidad;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Localidad_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idLocalidad")
    private Set<DomicilioExpediente> Localidad.domicilioExpedientes;
    
    @OneToMany(mappedBy = "idLocalidad")
    private Set<DomicilioPersonaFisica> Localidad.domicilioPersonaFisicas;
    
    @OneToMany(mappedBy = "idLocalidad")
    private Set<DomicilioPersonaJuridica> Localidad.domicilioPersonaJuridicas;
    
    @Column(name = "descripcion", length = 100, unique = true)
    private String Localidad.descripcion;
    
    @Column(name = "usuario_creacion", length = 100)
    private String Localidad.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Localidad.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String Localidad.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String Localidad.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Localidad.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String Localidad.hostModificacion;
    
    public Set<DomicilioExpediente> Localidad.getDomicilioExpedientes() {
        return domicilioExpedientes;
    }
    
    public void Localidad.setDomicilioExpedientes(Set<DomicilioExpediente> domicilioExpedientes) {
        this.domicilioExpedientes = domicilioExpedientes;
    }
    
    public Set<DomicilioPersonaFisica> Localidad.getDomicilioPersonaFisicas() {
        return domicilioPersonaFisicas;
    }
    
    public void Localidad.setDomicilioPersonaFisicas(Set<DomicilioPersonaFisica> domicilioPersonaFisicas) {
        this.domicilioPersonaFisicas = domicilioPersonaFisicas;
    }
    
    public Set<DomicilioPersonaJuridica> Localidad.getDomicilioPersonaJuridicas() {
        return domicilioPersonaJuridicas;
    }
    
    public void Localidad.setDomicilioPersonaJuridicas(Set<DomicilioPersonaJuridica> domicilioPersonaJuridicas) {
        this.domicilioPersonaJuridicas = domicilioPersonaJuridicas;
    }
    
    public String Localidad.getDescripcion() {
        return descripcion;
    }
    
    public void Localidad.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String Localidad.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void Localidad.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar Localidad.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void Localidad.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String Localidad.getHostCreacion() {
        return hostCreacion;
    }
    
    public void Localidad.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String Localidad.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void Localidad.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar Localidad.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void Localidad.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String Localidad.getHostModificacion() {
        return hostModificacion;
    }
    
    public void Localidad.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}
