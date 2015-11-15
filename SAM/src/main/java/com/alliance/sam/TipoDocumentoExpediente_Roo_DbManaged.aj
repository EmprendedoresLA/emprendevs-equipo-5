// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.ExpedienteDocumento;
import com.alliance.sam.TipoDocumentoExpediente;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect TipoDocumentoExpediente_Roo_DbManaged {
    
    @OneToMany(mappedBy = "tipoDocumento")
    private Set<ExpedienteDocumento> TipoDocumentoExpediente.expedienteDocumentoes;
    
    @Column(name = "descripcion", length = 30)
    @NotNull
    private String TipoDocumentoExpediente.descripcion;
    
    @Column(name = "observaciones", length = 40)
    private String TipoDocumentoExpediente.observaciones;
    
    @Column(name = "habilitado", length = 1)
    private String TipoDocumentoExpediente.habilitado;
    
    @Column(name = "usuario_creacion", length = 100)
    private String TipoDocumentoExpediente.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoDocumentoExpediente.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String TipoDocumentoExpediente.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String TipoDocumentoExpediente.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TipoDocumentoExpediente.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String TipoDocumentoExpediente.hostModificacion;
    
    public Set<ExpedienteDocumento> TipoDocumentoExpediente.getExpedienteDocumentoes() {
        return expedienteDocumentoes;
    }
    
    public void TipoDocumentoExpediente.setExpedienteDocumentoes(Set<ExpedienteDocumento> expedienteDocumentoes) {
        this.expedienteDocumentoes = expedienteDocumentoes;
    }
    
    public String TipoDocumentoExpediente.getDescripcion() {
        return descripcion;
    }
    
    public void TipoDocumentoExpediente.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String TipoDocumentoExpediente.getObservaciones() {
        return observaciones;
    }
    
    public void TipoDocumentoExpediente.setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
    public String TipoDocumentoExpediente.getHabilitado() {
        return habilitado;
    }
    
    public void TipoDocumentoExpediente.setHabilitado(String habilitado) {
        this.habilitado = habilitado;
    }
    
    public String TipoDocumentoExpediente.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void TipoDocumentoExpediente.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar TipoDocumentoExpediente.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void TipoDocumentoExpediente.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String TipoDocumentoExpediente.getHostCreacion() {
        return hostCreacion;
    }
    
    public void TipoDocumentoExpediente.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String TipoDocumentoExpediente.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void TipoDocumentoExpediente.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar TipoDocumentoExpediente.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void TipoDocumentoExpediente.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String TipoDocumentoExpediente.getHostModificacion() {
        return hostModificacion;
    }
    
    public void TipoDocumentoExpediente.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}