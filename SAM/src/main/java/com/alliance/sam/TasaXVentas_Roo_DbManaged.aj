// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TasaXVentas;
import java.math.BigDecimal;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect TasaXVentas_Roo_DbManaged {
    
    @Column(name = "desde")
    @NotNull
    private Long TasaXVentas.desde;
    
    @Column(name = "hasta")
    @NotNull
    private Long TasaXVentas.hasta;
    
    @Column(name = "alicuota", precision = 15, scale = 4)
    private BigDecimal TasaXVentas.alicuota;
    
    @Column(name = "descripcion", length = 100)
    private String TasaXVentas.descripcion;
    
    @Column(name = "usuario_creacion", length = 100)
    private String TasaXVentas.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TasaXVentas.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String TasaXVentas.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String TasaXVentas.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar TasaXVentas.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String TasaXVentas.hostModificacion;
    
    public Long TasaXVentas.getDesde() {
        return desde;
    }
    
    public void TasaXVentas.setDesde(Long desde) {
        this.desde = desde;
    }
    
    public Long TasaXVentas.getHasta() {
        return hasta;
    }
    
    public void TasaXVentas.setHasta(Long hasta) {
        this.hasta = hasta;
    }
    
    public BigDecimal TasaXVentas.getAlicuota() {
        return alicuota;
    }
    
    public void TasaXVentas.setAlicuota(BigDecimal alicuota) {
        this.alicuota = alicuota;
    }
    
    public String TasaXVentas.getDescripcion() {
        return descripcion;
    }
    
    public void TasaXVentas.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public String TasaXVentas.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void TasaXVentas.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar TasaXVentas.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void TasaXVentas.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String TasaXVentas.getHostCreacion() {
        return hostCreacion;
    }
    
    public void TasaXVentas.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String TasaXVentas.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void TasaXVentas.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar TasaXVentas.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void TasaXVentas.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String TasaXVentas.getHostModificacion() {
        return hostModificacion;
    }
    
    public void TasaXVentas.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}