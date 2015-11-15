// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DatosCatastro;
import com.alliance.sam.Expediente;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DatosCatastro_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_expediente_control", referencedColumnName = "id_expediente_control", nullable = false)
    private Expediente DatosCatastro.idExpedienteControl;
    
    @Column(name = "numero_certificado", length = 50)
    private String DatosCatastro.numeroCertificado;
    
    @Column(name = "circunscripcion", length = 50)
    private String DatosCatastro.circunscripcion;
    
    @Column(name = "seccion", length = 50)
    private String DatosCatastro.seccion;
    
    @Column(name = "manzana", length = 50)
    private String DatosCatastro.manzana;
    
    @Column(name = "parcela", length = 50)
    private String DatosCatastro.parcela;
    
    @Column(name = "fraccion", length = 50)
    private String DatosCatastro.fraccion;
    
    @Column(name = "cha", length = 50)
    private String DatosCatastro.cha;
    
    @Column(name = "quinta", length = 50)
    private String DatosCatastro.quinta;
    
    @Column(name = "partida", length = 50)
    private String DatosCatastro.partida;
    
    @Column(name = "fecha_emision_certificado")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date DatosCatastro.fechaEmisionCertificado;
    
    @Column(name = "fecha_presentacion")
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date DatosCatastro.fechaPresentacion;
    
    @Column(name = "letra_presentacion_certificado", length = 4)
    private String DatosCatastro.letraPresentacionCertificado;
    
    @Column(name = "funcionamiento_del_uso_de", length = 1000)
    private String DatosCatastro.funcionamientoDelUsoDe;
    
    @Column(name = "nro_expediente_de_contruccion", length = 45)
    private String DatosCatastro.nroExpedienteDeContruccion;
    
    @Column(name = "letra_expediente_de_contruccion", length = 4)
    private String DatosCatastro.letraExpedienteDeContruccion;
    
    @Column(name = "anio_expediente_de_contruccion")
    private Integer DatosCatastro.anioExpedienteDeContruccion;
    
    @Column(name = "usuario_creacion", length = 100)
    private String DatosCatastro.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DatosCatastro.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String DatosCatastro.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String DatosCatastro.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar DatosCatastro.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String DatosCatastro.hostModificacion;
    
    public Expediente DatosCatastro.getIdExpedienteControl() {
        return idExpedienteControl;
    }
    
    public void DatosCatastro.setIdExpedienteControl(Expediente idExpedienteControl) {
        this.idExpedienteControl = idExpedienteControl;
    }
    
    public String DatosCatastro.getNumeroCertificado() {
        return numeroCertificado;
    }
    
    public void DatosCatastro.setNumeroCertificado(String numeroCertificado) {
        this.numeroCertificado = numeroCertificado;
    }
    
    public String DatosCatastro.getCircunscripcion() {
        return circunscripcion;
    }
    
    public void DatosCatastro.setCircunscripcion(String circunscripcion) {
        this.circunscripcion = circunscripcion;
    }
    
    public String DatosCatastro.getSeccion() {
        return seccion;
    }
    
    public void DatosCatastro.setSeccion(String seccion) {
        this.seccion = seccion;
    }
    
    public String DatosCatastro.getManzana() {
        return manzana;
    }
    
    public void DatosCatastro.setManzana(String manzana) {
        this.manzana = manzana;
    }
    
    public String DatosCatastro.getParcela() {
        return parcela;
    }
    
    public void DatosCatastro.setParcela(String parcela) {
        this.parcela = parcela;
    }
    
    public String DatosCatastro.getFraccion() {
        return fraccion;
    }
    
    public void DatosCatastro.setFraccion(String fraccion) {
        this.fraccion = fraccion;
    }
    
    public String DatosCatastro.getCha() {
        return cha;
    }
    
    public void DatosCatastro.setCha(String cha) {
        this.cha = cha;
    }
    
    public String DatosCatastro.getQuinta() {
        return quinta;
    }
    
    public void DatosCatastro.setQuinta(String quinta) {
        this.quinta = quinta;
    }
    
    public String DatosCatastro.getPartida() {
        return partida;
    }
    
    public void DatosCatastro.setPartida(String partida) {
        this.partida = partida;
    }
    
    public Date DatosCatastro.getFechaEmisionCertificado() {
        return fechaEmisionCertificado;
    }
    
    public void DatosCatastro.setFechaEmisionCertificado(Date fechaEmisionCertificado) {
        this.fechaEmisionCertificado = fechaEmisionCertificado;
    }
    
    public Date DatosCatastro.getFechaPresentacion() {
        return fechaPresentacion;
    }
    
    public void DatosCatastro.setFechaPresentacion(Date fechaPresentacion) {
        this.fechaPresentacion = fechaPresentacion;
    }
    
    public String DatosCatastro.getLetraPresentacionCertificado() {
        return letraPresentacionCertificado;
    }
    
    public void DatosCatastro.setLetraPresentacionCertificado(String letraPresentacionCertificado) {
        this.letraPresentacionCertificado = letraPresentacionCertificado;
    }
    
    public String DatosCatastro.getFuncionamientoDelUsoDe() {
        return funcionamientoDelUsoDe;
    }
    
    public void DatosCatastro.setFuncionamientoDelUsoDe(String funcionamientoDelUsoDe) {
        this.funcionamientoDelUsoDe = funcionamientoDelUsoDe;
    }
    
    public String DatosCatastro.getNroExpedienteDeContruccion() {
        return nroExpedienteDeContruccion;
    }
    
    public void DatosCatastro.setNroExpedienteDeContruccion(String nroExpedienteDeContruccion) {
        this.nroExpedienteDeContruccion = nroExpedienteDeContruccion;
    }
    
    public String DatosCatastro.getLetraExpedienteDeContruccion() {
        return letraExpedienteDeContruccion;
    }
    
    public void DatosCatastro.setLetraExpedienteDeContruccion(String letraExpedienteDeContruccion) {
        this.letraExpedienteDeContruccion = letraExpedienteDeContruccion;
    }
    
    public Integer DatosCatastro.getAnioExpedienteDeContruccion() {
        return anioExpedienteDeContruccion;
    }
    
    public void DatosCatastro.setAnioExpedienteDeContruccion(Integer anioExpedienteDeContruccion) {
        this.anioExpedienteDeContruccion = anioExpedienteDeContruccion;
    }
    
    public String DatosCatastro.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void DatosCatastro.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar DatosCatastro.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void DatosCatastro.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String DatosCatastro.getHostCreacion() {
        return hostCreacion;
    }
    
    public void DatosCatastro.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String DatosCatastro.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void DatosCatastro.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar DatosCatastro.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void DatosCatastro.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String DatosCatastro.getHostModificacion() {
        return hostModificacion;
    }
    
    public void DatosCatastro.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}