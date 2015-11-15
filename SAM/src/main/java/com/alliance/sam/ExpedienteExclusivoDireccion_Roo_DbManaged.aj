// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedienteExclusivoDireccion;
import com.alliance.sam.TipoOperacionCargaDescarga;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect ExpedienteExclusivoDireccion_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_expediente_control", referencedColumnName = "id_expediente_control")
    private Expediente ExpedienteExclusivoDireccion.idExpedienteControl;
    
    @ManyToOne
    @JoinColumn(name = "id_tipo_operacion_carga_descarga", referencedColumnName = "id_tipo_operacion_carga_descarga")
    private TipoOperacionCargaDescarga ExpedienteExclusivoDireccion.idTipoOperacionCargaDescarga;
    
    @Column(name = "superficie_cubierta_a_habilitar", precision = 10, scale = 3)
    private BigDecimal ExpedienteExclusivoDireccion.superficieCubiertaAHabilitar;
    
    @Column(name = "superficie_descubierta_a_habilitar", precision = 10, scale = 3)
    private BigDecimal ExpedienteExclusivoDireccion.superficieDescubiertaAHabilitar;
    
    @Column(name = "superficie_total", precision = 10, scale = 3)
    private BigDecimal ExpedienteExclusivoDireccion.superficieTotal;
    
    @Column(name = "superficie_maxima_admisible", precision = 10, scale = 3)
    private BigDecimal ExpedienteExclusivoDireccion.superficieMaximaAdmisible;
    
    @Column(name = "superficie_minima_exigible", precision = 10, scale = 3)
    private BigDecimal ExpedienteExclusivoDireccion.superficieMinimaExigible;
    
    @Column(name = "deposito", length = 150)
    private String ExpedienteExclusivoDireccion.deposito;
    
    public Expediente ExpedienteExclusivoDireccion.getIdExpedienteControl() {
        return idExpedienteControl;
    }
    
    public void ExpedienteExclusivoDireccion.setIdExpedienteControl(Expediente idExpedienteControl) {
        this.idExpedienteControl = idExpedienteControl;
    }
    
    public TipoOperacionCargaDescarga ExpedienteExclusivoDireccion.getIdTipoOperacionCargaDescarga() {
        return idTipoOperacionCargaDescarga;
    }
    
    public void ExpedienteExclusivoDireccion.setIdTipoOperacionCargaDescarga(TipoOperacionCargaDescarga idTipoOperacionCargaDescarga) {
        this.idTipoOperacionCargaDescarga = idTipoOperacionCargaDescarga;
    }
    
    public BigDecimal ExpedienteExclusivoDireccion.getSuperficieCubiertaAHabilitar() {
        return superficieCubiertaAHabilitar;
    }
    
    public void ExpedienteExclusivoDireccion.setSuperficieCubiertaAHabilitar(BigDecimal superficieCubiertaAHabilitar) {
        this.superficieCubiertaAHabilitar = superficieCubiertaAHabilitar;
    }
    
    public BigDecimal ExpedienteExclusivoDireccion.getSuperficieDescubiertaAHabilitar() {
        return superficieDescubiertaAHabilitar;
    }
    
    public void ExpedienteExclusivoDireccion.setSuperficieDescubiertaAHabilitar(BigDecimal superficieDescubiertaAHabilitar) {
        this.superficieDescubiertaAHabilitar = superficieDescubiertaAHabilitar;
    }
    
    public BigDecimal ExpedienteExclusivoDireccion.getSuperficieTotal() {
        return superficieTotal;
    }
    
    public void ExpedienteExclusivoDireccion.setSuperficieTotal(BigDecimal superficieTotal) {
        this.superficieTotal = superficieTotal;
    }
    
    public BigDecimal ExpedienteExclusivoDireccion.getSuperficieMaximaAdmisible() {
        return superficieMaximaAdmisible;
    }
    
    public void ExpedienteExclusivoDireccion.setSuperficieMaximaAdmisible(BigDecimal superficieMaximaAdmisible) {
        this.superficieMaximaAdmisible = superficieMaximaAdmisible;
    }
    
    public BigDecimal ExpedienteExclusivoDireccion.getSuperficieMinimaExigible() {
        return superficieMinimaExigible;
    }
    
    public void ExpedienteExclusivoDireccion.setSuperficieMinimaExigible(BigDecimal superficieMinimaExigible) {
        this.superficieMinimaExigible = superficieMinimaExigible;
    }
    
    public String ExpedienteExclusivoDireccion.getDeposito() {
        return deposito;
    }
    
    public void ExpedienteExclusivoDireccion.setDeposito(String deposito) {
        this.deposito = deposito;
    }
    
}