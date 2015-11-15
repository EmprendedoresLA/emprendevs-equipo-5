// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedienteDocumento;
import com.alliance.sam.TipoDocumentoExpediente;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect ExpedienteDocumento_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_expediente_control", referencedColumnName = "id_expediente_control", nullable = false)
    private Expediente ExpedienteDocumento.idExpedienteControl;
    
    @ManyToOne
    @JoinColumn(name = "tipo_documento", referencedColumnName = "id_tipo_documento_expediente", nullable = false)
    private TipoDocumentoExpediente ExpedienteDocumento.tipoDocumento;
    
    @Column(name = "id_ubicacion")
    private Long ExpedienteDocumento.idUbicacion;
    
    @Column(name = "descripcion", length = 50)
    private String ExpedienteDocumento.descripcion;
    
    @Column(name = "fecha_vigencia")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar ExpedienteDocumento.fechaVigencia;
    
    @Column(name = "usuario_creacion", length = 100)
    private String ExpedienteDocumento.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar ExpedienteDocumento.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String ExpedienteDocumento.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String ExpedienteDocumento.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar ExpedienteDocumento.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String ExpedienteDocumento.hostModificacion;
    
    public Expediente ExpedienteDocumento.getIdExpedienteControl() {
        return idExpedienteControl;
    }
    
    public void ExpedienteDocumento.setIdExpedienteControl(Expediente idExpedienteControl) {
        this.idExpedienteControl = idExpedienteControl;
    }
    
    public TipoDocumentoExpediente ExpedienteDocumento.getTipoDocumento() {
        return tipoDocumento;
    }
    
    public void ExpedienteDocumento.setTipoDocumento(TipoDocumentoExpediente tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }
    
    public Long ExpedienteDocumento.getIdUbicacion() {
        return idUbicacion;
    }
    
    public void ExpedienteDocumento.setIdUbicacion(Long idUbicacion) {
        this.idUbicacion = idUbicacion;
    }
    
    public String ExpedienteDocumento.getDescripcion() {
        return descripcion;
    }
    
    public void ExpedienteDocumento.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Calendar ExpedienteDocumento.getFechaVigencia() {
        return fechaVigencia;
    }
    
    public void ExpedienteDocumento.setFechaVigencia(Calendar fechaVigencia) {
        this.fechaVigencia = fechaVigencia;
    }
    
    public String ExpedienteDocumento.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void ExpedienteDocumento.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar ExpedienteDocumento.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void ExpedienteDocumento.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String ExpedienteDocumento.getHostCreacion() {
        return hostCreacion;
    }
    
    public void ExpedienteDocumento.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String ExpedienteDocumento.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void ExpedienteDocumento.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar ExpedienteDocumento.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void ExpedienteDocumento.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String ExpedienteDocumento.getHostModificacion() {
        return hostModificacion;
    }
    
    public void ExpedienteDocumento.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}