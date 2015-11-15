// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Calculo;
import com.alliance.sam.CertificadoZonificacion;
import com.alliance.sam.DatosCatastro;
import com.alliance.sam.DatosPlaneamiento;
import com.alliance.sam.Ddjj;
import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedienteComercio;
import com.alliance.sam.ExpedienteDocumento;
import com.alliance.sam.ExpedienteEstado;
import com.alliance.sam.ExpedienteEstadoDeTramite;
import com.alliance.sam.ExpedienteExclusivoDireccion;
import com.alliance.sam.ExpedienteIndustria;
import com.alliance.sam.ExpedientePersonaFisica;
import com.alliance.sam.ExpedientePersonaJuridica;
import com.alliance.sam.ExpedienteRubro;
import com.alliance.sam.Inspeccion;
import com.alliance.sam.TipoAnio;
import com.alliance.sam.TipoEstablecimiento;
import com.alliance.sam.TipoGeneral;
import com.alliance.sam.VentaPresunta;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Expediente_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<Calculo> Expediente.calculoes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<CertificadoZonificacion> Expediente.certificadoZonificacions;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<DatosCatastro> Expediente.datosCatastroes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<DatosPlaneamiento> Expediente.datosPlaneamientoes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<Ddjj> Expediente.ddjjs;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<DomicilioExpediente> Expediente.domicilioExpedientes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedienteComercio> Expediente.expedienteComercios;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedienteDocumento> Expediente.expedienteDocumentoes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedienteExclusivoDireccion> Expediente.expedienteExclusivoDireccions;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedienteIndustria> Expediente.expedienteIndustrias;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedientePersonaFisica> Expediente.expedientePersonaFisicas;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedientePersonaJuridica> Expediente.expedientePersonaJuridicas;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<ExpedienteRubro> Expediente.expedienteRubroes;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<Inspeccion> Expediente.inspeccions;
    
    @OneToMany(mappedBy = "idExpedienteControl")
    private Set<VentaPresunta> Expediente.ventaPresuntas;
    
    @ManyToOne
    @JoinColumn(name = "id_expediente_estado", referencedColumnName = "id_expediente_estado", nullable = false)
    private ExpedienteEstado Expediente.idExpedienteEstado;
    
    @ManyToOne
    @JoinColumn(name = "id_estado_de_tramite", referencedColumnName = "id_estado", nullable = false)
    private ExpedienteEstadoDeTramite Expediente.idEstadoDeTramite;
    
    @ManyToOne
    @JoinColumn(name = "internacion", referencedColumnName = "id_tipo_general")
    private TipoGeneral Expediente.internacion;
    
    @ManyToOne
    @JoinColumn(name = "id_tipo_establecimiento", referencedColumnName = "id_tipo_establecimiento", nullable = false)
    private TipoEstablecimiento Expediente.idTipoEstablecimiento;
    
    @ManyToOne
    @JoinColumn(name = "local_interno", referencedColumnName = "id_tipo_general", nullable = false)
    private TipoGeneral Expediente.localInterno;
    
    @ManyToOne
    @JoinColumn(name = "requiere_ddjj", referencedColumnName = "id_tipo_general", nullable = false)
    private TipoGeneral Expediente.requiereDdjj;
    
    @ManyToOne
    @JoinColumn(name = "anio", referencedColumnName = "id_tipo_anio", nullable = false)
    private TipoAnio Expediente.anio;
    
    @ManyToOne
    @JoinColumn(name = "anio_ddjj", referencedColumnName = "id_tipo_anio", nullable = false)
    private TipoAnio Expediente.anioDdjj;
    
    @Column(name = "id_ddjj")
    private Long Expediente.idDdjj;
    
    @Column(name = "id_expediente", unique = true)
    @NotNull
    private Long Expediente.idExpediente;
    
    @Column(name = "telefono", length = 45)
    private String Expediente.telefono;
    
    @Column(name = "nombre_fantasia", length = 100)
    private String Expediente.nombreFantasia;
    
    @Column(name = "nombre_apellido", length = 100)
    private String Expediente.nombreApellido;
    
    @Column(name = "CUIT_CUIL_DNI", length = 45)
    private String Expediente.cuitCuilDni;
    
    @Column(name = "cantidad_medida", precision = 10, scale = 3)
    private BigDecimal Expediente.cantidadMedida;
    
    @Column(name = "baja")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Expediente.baja;
    
    @Column(name = "estado_tipo", length = 30)
    private String Expediente.estadoTipo;
    
    @Column(name = "fecha_inicio")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Expediente.fechaInicio;
    
    @Column(name = "activo_fijo", precision = 22)
    private Double Expediente.activoFijo;
    
    @Column(name = "cant_empleados")
    private Integer Expediente.cantEmpleados;
    
    @Column(name = "horario_atenc", length = 200)
    private String Expediente.horarioAtenc;
    
    @Column(name = "memoria", length = 500)
    private String Expediente.memoria;
    
    @Column(name = "maquinaria", length = 200)
    private String Expediente.maquinaria;
    
    @Column(name = "total_hp")
    private Integer Expediente.totalHp;
    
    @Column(name = "usuario_creacion", length = 100)
    private String Expediente.usuarioCreacion;
    
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Expediente.fechaCreacion;
    
    @Column(name = "host_creacion", length = 100)
    private String Expediente.hostCreacion;
    
    @Column(name = "usuario_modificacion", length = 100)
    private String Expediente.usuarioModificacion;
    
    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Expediente.fechaModificacion;
    
    @Column(name = "host_modificacion", length = 100)
    private String Expediente.hostModificacion;
    
    public Set<Calculo> Expediente.getCalculoes() {
        return calculoes;
    }
    
    public void Expediente.setCalculoes(Set<Calculo> calculoes) {
        this.calculoes = calculoes;
    }
    
    public Set<CertificadoZonificacion> Expediente.getCertificadoZonificacions() {
        return certificadoZonificacions;
    }
    
    public void Expediente.setCertificadoZonificacions(Set<CertificadoZonificacion> certificadoZonificacions) {
        this.certificadoZonificacions = certificadoZonificacions;
    }
    
    public Set<DatosCatastro> Expediente.getDatosCatastroes() {
        return datosCatastroes;
    }
    
    public void Expediente.setDatosCatastroes(Set<DatosCatastro> datosCatastroes) {
        this.datosCatastroes = datosCatastroes;
    }
    
    public Set<DatosPlaneamiento> Expediente.getDatosPlaneamientoes() {
        return datosPlaneamientoes;
    }
    
    public void Expediente.setDatosPlaneamientoes(Set<DatosPlaneamiento> datosPlaneamientoes) {
        this.datosPlaneamientoes = datosPlaneamientoes;
    }
    
    public Set<Ddjj> Expediente.getDdjjs() {
        return ddjjs;
    }
    
    public void Expediente.setDdjjs(Set<Ddjj> ddjjs) {
        this.ddjjs = ddjjs;
    }
    
    public Set<DomicilioExpediente> Expediente.getDomicilioExpedientes() {
        return domicilioExpedientes;
    }
    
    public void Expediente.setDomicilioExpedientes(Set<DomicilioExpediente> domicilioExpedientes) {
        this.domicilioExpedientes = domicilioExpedientes;
    }
    
    public Set<ExpedienteComercio> Expediente.getExpedienteComercios() {
        return expedienteComercios;
    }
    
    public void Expediente.setExpedienteComercios(Set<ExpedienteComercio> expedienteComercios) {
        this.expedienteComercios = expedienteComercios;
    }
    
    public Set<ExpedienteDocumento> Expediente.getExpedienteDocumentoes() {
        return expedienteDocumentoes;
    }
    
    public void Expediente.setExpedienteDocumentoes(Set<ExpedienteDocumento> expedienteDocumentoes) {
        this.expedienteDocumentoes = expedienteDocumentoes;
    }
    
    public Set<ExpedienteExclusivoDireccion> Expediente.getExpedienteExclusivoDireccions() {
        return expedienteExclusivoDireccions;
    }
    
    public void Expediente.setExpedienteExclusivoDireccions(Set<ExpedienteExclusivoDireccion> expedienteExclusivoDireccions) {
        this.expedienteExclusivoDireccions = expedienteExclusivoDireccions;
    }
    
    public Set<ExpedienteIndustria> Expediente.getExpedienteIndustrias() {
        return expedienteIndustrias;
    }
    
    public void Expediente.setExpedienteIndustrias(Set<ExpedienteIndustria> expedienteIndustrias) {
        this.expedienteIndustrias = expedienteIndustrias;
    }
    
    public Set<ExpedientePersonaFisica> Expediente.getExpedientePersonaFisicas() {
        return expedientePersonaFisicas;
    }
    
    public void Expediente.setExpedientePersonaFisicas(Set<ExpedientePersonaFisica> expedientePersonaFisicas) {
        this.expedientePersonaFisicas = expedientePersonaFisicas;
    }
    
    public Set<ExpedientePersonaJuridica> Expediente.getExpedientePersonaJuridicas() {
        return expedientePersonaJuridicas;
    }
    
    public void Expediente.setExpedientePersonaJuridicas(Set<ExpedientePersonaJuridica> expedientePersonaJuridicas) {
        this.expedientePersonaJuridicas = expedientePersonaJuridicas;
    }
    
    public Set<ExpedienteRubro> Expediente.getExpedienteRubroes() {
        return expedienteRubroes;
    }
    
    public void Expediente.setExpedienteRubroes(Set<ExpedienteRubro> expedienteRubroes) {
        this.expedienteRubroes = expedienteRubroes;
    }
    
    public Set<Inspeccion> Expediente.getInspeccions() {
        return inspeccions;
    }
    
    public void Expediente.setInspeccions(Set<Inspeccion> inspeccions) {
        this.inspeccions = inspeccions;
    }
    
    public Set<VentaPresunta> Expediente.getVentaPresuntas() {
        return ventaPresuntas;
    }
    
    public void Expediente.setVentaPresuntas(Set<VentaPresunta> ventaPresuntas) {
        this.ventaPresuntas = ventaPresuntas;
    }
    
    public ExpedienteEstado Expediente.getIdExpedienteEstado() {
        return idExpedienteEstado;
    }
    
    public void Expediente.setIdExpedienteEstado(ExpedienteEstado idExpedienteEstado) {
        this.idExpedienteEstado = idExpedienteEstado;
    }
    
    public ExpedienteEstadoDeTramite Expediente.getIdEstadoDeTramite() {
        return idEstadoDeTramite;
    }
    
    public void Expediente.setIdEstadoDeTramite(ExpedienteEstadoDeTramite idEstadoDeTramite) {
        this.idEstadoDeTramite = idEstadoDeTramite;
    }
    
    public TipoGeneral Expediente.getInternacion() {
        return internacion;
    }
    
    public void Expediente.setInternacion(TipoGeneral internacion) {
        this.internacion = internacion;
    }
    
    public TipoEstablecimiento Expediente.getIdTipoEstablecimiento() {
        return idTipoEstablecimiento;
    }
    
    public void Expediente.setIdTipoEstablecimiento(TipoEstablecimiento idTipoEstablecimiento) {
        this.idTipoEstablecimiento = idTipoEstablecimiento;
    }
    
    public TipoGeneral Expediente.getLocalInterno() {
        return localInterno;
    }
    
    public void Expediente.setLocalInterno(TipoGeneral localInterno) {
        this.localInterno = localInterno;
    }
    
    public TipoGeneral Expediente.getRequiereDdjj() {
        return requiereDdjj;
    }
    
    public void Expediente.setRequiereDdjj(TipoGeneral requiereDdjj) {
        this.requiereDdjj = requiereDdjj;
    }
    
    public TipoAnio Expediente.getAnio() {
        return anio;
    }
    
    public void Expediente.setAnio(TipoAnio anio) {
        this.anio = anio;
    }
    
    public TipoAnio Expediente.getAnioDdjj() {
        return anioDdjj;
    }
    
    public void Expediente.setAnioDdjj(TipoAnio anioDdjj) {
        this.anioDdjj = anioDdjj;
    }
    
    public Long Expediente.getIdDdjj() {
        return idDdjj;
    }
    
    public void Expediente.setIdDdjj(Long idDdjj) {
        this.idDdjj = idDdjj;
    }
    
    public Long Expediente.getIdExpediente() {
        return idExpediente;
    }
    
    public void Expediente.setIdExpediente(Long idExpediente) {
        this.idExpediente = idExpediente;
    }
    
    public String Expediente.getTelefono() {
        return telefono;
    }
    
    public void Expediente.setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public String Expediente.getNombreFantasia() {
        return nombreFantasia;
    }
    
    public void Expediente.setNombreFantasia(String nombreFantasia) {
        this.nombreFantasia = nombreFantasia;
    }
    
    public String Expediente.getNombreApellido() {
        return nombreApellido;
    }
    
    public void Expediente.setNombreApellido(String nombreApellido) {
        this.nombreApellido = nombreApellido;
    }
    
    public String Expediente.getCuitCuilDni() {
        return cuitCuilDni;
    }
    
    public void Expediente.setCuitCuilDni(String cuitCuilDni) {
        this.cuitCuilDni = cuitCuilDni;
    }
    
    public BigDecimal Expediente.getCantidadMedida() {
        return cantidadMedida;
    }
    
    public void Expediente.setCantidadMedida(BigDecimal cantidadMedida) {
        this.cantidadMedida = cantidadMedida;
    }
    
    public Date Expediente.getBaja() {
        return baja;
    }
    
    public void Expediente.setBaja(Date baja) {
        this.baja = baja;
    }
    
    public String Expediente.getEstadoTipo() {
        return estadoTipo;
    }
    
    public void Expediente.setEstadoTipo(String estadoTipo) {
        this.estadoTipo = estadoTipo;
    }
    
    public Date Expediente.getFechaInicio() {
        return fechaInicio;
    }
    
    public void Expediente.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public Double Expediente.getActivoFijo() {
        return activoFijo;
    }
    
    public void Expediente.setActivoFijo(Double activoFijo) {
        this.activoFijo = activoFijo;
    }
    
    public Integer Expediente.getCantEmpleados() {
        return cantEmpleados;
    }
    
    public void Expediente.setCantEmpleados(Integer cantEmpleados) {
        this.cantEmpleados = cantEmpleados;
    }
    
    public String Expediente.getHorarioAtenc() {
        return horarioAtenc;
    }
    
    public void Expediente.setHorarioAtenc(String horarioAtenc) {
        this.horarioAtenc = horarioAtenc;
    }
    
    public String Expediente.getMemoria() {
        return memoria;
    }
    
    public void Expediente.setMemoria(String memoria) {
        this.memoria = memoria;
    }
    
    public String Expediente.getMaquinaria() {
        return maquinaria;
    }
    
    public void Expediente.setMaquinaria(String maquinaria) {
        this.maquinaria = maquinaria;
    }
    
    public Integer Expediente.getTotalHp() {
        return totalHp;
    }
    
    public void Expediente.setTotalHp(Integer totalHp) {
        this.totalHp = totalHp;
    }
    
    public String Expediente.getUsuarioCreacion() {
        return usuarioCreacion;
    }
    
    public void Expediente.setUsuarioCreacion(String usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }
    
    public Calendar Expediente.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void Expediente.setFechaCreacion(Calendar fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public String Expediente.getHostCreacion() {
        return hostCreacion;
    }
    
    public void Expediente.setHostCreacion(String hostCreacion) {
        this.hostCreacion = hostCreacion;
    }
    
    public String Expediente.getUsuarioModificacion() {
        return usuarioModificacion;
    }
    
    public void Expediente.setUsuarioModificacion(String usuarioModificacion) {
        this.usuarioModificacion = usuarioModificacion;
    }
    
    public Calendar Expediente.getFechaModificacion() {
        return fechaModificacion;
    }
    
    public void Expediente.setFechaModificacion(Calendar fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    
    public String Expediente.getHostModificacion() {
        return hostModificacion;
    }
    
    public void Expediente.setHostModificacion(String hostModificacion) {
        this.hostModificacion = hostModificacion;
    }
    
}
