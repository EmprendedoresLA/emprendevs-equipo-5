// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TipoAgua;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect TipoAgua_Roo_DbManaged {
    
    @Column(name = "descripcion", length = 30)
    @NotNull
    private String TipoAgua.descripcion;
    
    @Column(name = "observaciones", length = 40)
    private String TipoAgua.observaciones;
    
    @Column(name = "usuario_creacion", length = 100)
    private String TipoAgua.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoAgua.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String TipoAgua.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String TipoAgua.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoAgua.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String TipoAgua.hostModificacion;
    
    public String TipoAgua.getDescripcion() {
        return descripcion;
    }
    
    public void TipoAgua.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String TipoAgua.getObservaciones() {
        return observaciones;
    }
    
    public void TipoAgua.setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
    public String TipoAgua.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void TipoAgua.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar TipoAgua.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void TipoAgua.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String TipoAgua.getHostCreacion() {
        return hostCreacion;
    }
    
    public void TipoAgua.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String TipoAgua.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void TipoAgua.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar TipoAgua.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void TipoAgua.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String TipoAgua.getHostModificacion() {
        return hostModificacion;
    }
    
    public void TipoAgua.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}
