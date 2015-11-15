// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.DomicilioPersonaFisica;
import com.alliance.sam.DomicilioPersonaJuridica;
import com.alliance.sam.TipoDomicilio;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect TipoDomicilio_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idTipoDomicilio")
    private Set<DomicilioExpediente> TipoDomicilio.domicilioExpedientes;
    
    @OneToMany(mappedBy = "idTipoDomicilio")
    private Set<DomicilioPersonaFisica> TipoDomicilio.domicilioPersonaFisicas;
    
    @OneToMany(mappedBy = "idTipoDomicilio")
    private Set<DomicilioPersonaJuridica> TipoDomicilio.domicilioPersonaJuridicas;
    
    @Column(name = "descripcion", length = 30)
    @NotNull
    private String TipoDomicilio.descripcion;
    
    @Column(name = "observaciones", length = 40)
    private String TipoDomicilio.observaciones;
    
    @Column(name = "usuario_creacion", length = 100)
    private String TipoDomicilio.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoDomicilio.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String TipoDomicilio.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String TipoDomicilio.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoDomicilio.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String TipoDomicilio.hostModificacion;
    
    public Set<DomicilioExpediente> TipoDomicilio.getDomicilioExpedientes() {
        return domicilioExpedientes;
    }
    
    public void TipoDomicilio.setDomicilioExpedientes(Set<DomicilioExpediente> domicilioExpedientes) {
        this.domicilioExpedientes = domicilioExpedientes;
    }
    
    public Set<DomicilioPersonaFisica> TipoDomicilio.getDomicilioPersonaFisicas() {
        return domicilioPersonaFisicas;
    }
    
    public void TipoDomicilio.setDomicilioPersonaFisicas(Set<DomicilioPersonaFisica> domicilioPersonaFisicas) {
        this.domicilioPersonaFisicas = domicilioPersonaFisicas;
    }
    
    public Set<DomicilioPersonaJuridica> TipoDomicilio.getDomicilioPersonaJuridicas() {
        return domicilioPersonaJuridicas;
    }
    
    public void TipoDomicilio.setDomicilioPersonaJuridicas(Set<DomicilioPersonaJuridica> domicilioPersonaJuridicas) {
        this.domicilioPersonaJuridicas = domicilioPersonaJuridicas;
    }
    
    public String TipoDomicilio.getDescripcion() {
        return descripcion;
    }
    
    public void TipoDomicilio.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String TipoDomicilio.getObservaciones() {
        return observaciones;
    }
    
    public void TipoDomicilio.setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
    public String TipoDomicilio.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void TipoDomicilio.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar TipoDomicilio.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void TipoDomicilio.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String TipoDomicilio.getHostCreacion() {
        return hostCreacion;
    }
    
    public void TipoDomicilio.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String TipoDomicilio.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void TipoDomicilio.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar TipoDomicilio.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void TipoDomicilio.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String TipoDomicilio.getHostModificacion() {
        return hostModificacion;
    }
    
    public void TipoDomicilio.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}