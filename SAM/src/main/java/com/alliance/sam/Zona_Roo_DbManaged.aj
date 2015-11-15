// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CoeficienteXZona;
import com.alliance.sam.DiferenciaXVentaXZona;
import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.DomicilioPersonaFisica;
import com.alliance.sam.DomicilioPersonaJuridica;
import com.alliance.sam.Zona;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Zona_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idZona")
    private Set<CoeficienteXZona> Zona.coeficienteXZonas;
    
    @OneToMany(mappedBy = "idZona")
    private Set<DiferenciaXVentaXZona> Zona.diferenciaXVentaXZonas;
    
    @OneToMany(mappedBy = "idZona")
    private Set<DomicilioExpediente> Zona.domicilioExpedientes;
    
    @OneToMany(mappedBy = "idZona")
    private Set<DomicilioPersonaFisica> Zona.domicilioPersonaFisicas;
    
    @OneToMany(mappedBy = "idZona")
    private Set<DomicilioPersonaJuridica> Zona.domicilioPersonaJuridicas;
    
    @Column(name = "descripcion", length = 150)
    @NotNull
    private String Zona.descripcion;
    
    @Column(name = "usuario_creacion", length = 100)
    private String Zona.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Zona.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String Zona.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String Zona.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Zona.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String Zona.hostModificacion;
    
    public Set<CoeficienteXZona> Zona.getCoeficienteXZonas() {
        return coeficienteXZonas;
    }
    
    public void Zona.setCoeficienteXZonas(Set<CoeficienteXZona> coeficienteXZonas) {
        this.coeficienteXZonas = coeficienteXZonas;
    }
    
    public Set<DiferenciaXVentaXZona> Zona.getDiferenciaXVentaXZonas() {
        return diferenciaXVentaXZonas;
    }
    
    public void Zona.setDiferenciaXVentaXZonas(Set<DiferenciaXVentaXZona> diferenciaXVentaXZonas) {
        this.diferenciaXVentaXZonas = diferenciaXVentaXZonas;
    }
    
    public Set<DomicilioExpediente> Zona.getDomicilioExpedientes() {
        return domicilioExpedientes;
    }
    
    public void Zona.setDomicilioExpedientes(Set<DomicilioExpediente> domicilioExpedientes) {
        this.domicilioExpedientes = domicilioExpedientes;
    }
    
    public Set<DomicilioPersonaFisica> Zona.getDomicilioPersonaFisicas() {
        return domicilioPersonaFisicas;
    }
    
    public void Zona.setDomicilioPersonaFisicas(Set<DomicilioPersonaFisica> domicilioPersonaFisicas) {
        this.domicilioPersonaFisicas = domicilioPersonaFisicas;
    }
    
    public Set<DomicilioPersonaJuridica> Zona.getDomicilioPersonaJuridicas() {
        return domicilioPersonaJuridicas;
    }
    
    public void Zona.setDomicilioPersonaJuridicas(Set<DomicilioPersonaJuridica> domicilioPersonaJuridicas) {
        this.domicilioPersonaJuridicas = domicilioPersonaJuridicas;
    }
    
    public String Zona.getDescripcion() {
        return descripcion;
    }
    
    public void Zona.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String Zona.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void Zona.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar Zona.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void Zona.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String Zona.getHostCreacion() {
        return hostCreacion;
    }
    
    public void Zona.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String Zona.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void Zona.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar Zona.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void Zona.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String Zona.getHostModificacion() {
        return hostModificacion;
    }
    
    public void Zona.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}