// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Expediente;
import com.alliance.sam.TipoEstablecimiento;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect TipoEstablecimiento_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idTipoEstablecimiento")
    private Set<Expediente> TipoEstablecimiento.expedientes;
    
    @Column(name = "descripcion", length = 30)
    @NotNull
    private String TipoEstablecimiento.descripcion;
    
    @Column(name = "observaciones", length = 150)
    private String TipoEstablecimiento.observaciones;
    
    @Column(name = "usuario_creacion", length = 100)
    private String TipoEstablecimiento.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoEstablecimiento.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String TipoEstablecimiento.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String TipoEstablecimiento.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoEstablecimiento.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String TipoEstablecimiento.hostModificacion;
    
    public Set<Expediente> TipoEstablecimiento.getExpedientes() {
        return expedientes;
    }
    
    public void TipoEstablecimiento.setExpedientes(Set<Expediente> expedientes) {
        this.expedientes = expedientes;
    }
    
    public String TipoEstablecimiento.getDescripcion() {
        return descripcion;
    }
    
    public void TipoEstablecimiento.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String TipoEstablecimiento.getObservaciones() {
        return observaciones;
    }
    
    public void TipoEstablecimiento.setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
    public String TipoEstablecimiento.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void TipoEstablecimiento.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar TipoEstablecimiento.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void TipoEstablecimiento.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String TipoEstablecimiento.getHostCreacion() {
        return hostCreacion;
    }
    
    public void TipoEstablecimiento.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String TipoEstablecimiento.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void TipoEstablecimiento.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar TipoEstablecimiento.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void TipoEstablecimiento.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String TipoEstablecimiento.getHostModificacion() {
        return hostModificacion;
    }
    
    public void TipoEstablecimiento.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}