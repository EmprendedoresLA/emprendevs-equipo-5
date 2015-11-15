// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Calle;
import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.DomicilioPersonaFisica;
import com.alliance.sam.DomicilioPersonaJuridica;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Calle_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idCalle")
    private Set<DomicilioExpediente> Calle.domicilioExpedientes;
    
    @OneToMany(mappedBy = "idCalle")
    private Set<DomicilioPersonaFisica> Calle.domicilioPersonaFisicas;
    
    @OneToMany(mappedBy = "idCalle")
    private Set<DomicilioPersonaJuridica> Calle.domicilioPersonaJuridicas;
    
    @Column(name = "descripcion", length = 90)
    @NotNull
    private String Calle.descripcion;
    
    @Column(name = "numeracion_ini")
    @NotNull
    private Integer Calle.numeracionIni;
    
    @Column(name = "numeracion_fin")
    @NotNull
    private Integer Calle.numeracionFin;
    
    @Column(name = "usuario_creacion", length = 100)
    private String Calle.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Calle.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String Calle.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String Calle.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Calle.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String Calle.hostModificacion;
    
    public Set<DomicilioExpediente> Calle.getDomicilioExpedientes() {
        return domicilioExpedientes;
    }
    
    public void Calle.setDomicilioExpedientes(Set<DomicilioExpediente> domicilioExpedientes) {
        this.domicilioExpedientes = domicilioExpedientes;
    }
    
    public Set<DomicilioPersonaFisica> Calle.getDomicilioPersonaFisicas() {
        return domicilioPersonaFisicas;
    }
    
    public void Calle.setDomicilioPersonaFisicas(Set<DomicilioPersonaFisica> domicilioPersonaFisicas) {
        this.domicilioPersonaFisicas = domicilioPersonaFisicas;
    }
    
    public Set<DomicilioPersonaJuridica> Calle.getDomicilioPersonaJuridicas() {
        return domicilioPersonaJuridicas;
    }
    
    public void Calle.setDomicilioPersonaJuridicas(Set<DomicilioPersonaJuridica> domicilioPersonaJuridicas) {
        this.domicilioPersonaJuridicas = domicilioPersonaJuridicas;
    }
    
    public String Calle.getDescripcion() {
        return descripcion;
    }
    
    public void Calle.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Integer Calle.getNumeracionIni() {
        return numeracionIni;
    }
    
    public void Calle.setNumeracionIni(Integer numeracionIni) {
        this.numeracionIni = numeracionIni;
    }
    
    public Integer Calle.getNumeracionFin() {
        return numeracionFin;
    }
    
    public void Calle.setNumeracionFin(Integer numeracionFin) {
        this.numeracionFin = numeracionFin;
    }
    
    public String Calle.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void Calle.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar Calle.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void Calle.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String Calle.getHostCreacion() {
        return hostCreacion;
    }
    
    public void Calle.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String Calle.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void Calle.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar Calle.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void Calle.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String Calle.getHostModificacion() {
        return hostModificacion;
    }
    
    public void Calle.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}
