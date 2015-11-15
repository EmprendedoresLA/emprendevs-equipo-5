// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CalculoDetalle;
import com.alliance.sam.CalculoDetallePasos;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect CalculoDetallePasos_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "id_calculo_detalle", referencedColumnName = "id_calculo_detalle", nullable = false)
    private CalculoDetalle CalculoDetallePasos.idCalculoDetalle;
    
    @Column(name = "fecha_hora_posicion")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar CalculoDetallePasos.fechaHoraPosicion;
    
    @Column(name = "posicion", length = 3200)
    @NotNull
    private String CalculoDetallePasos.posicion;
    
    @Column(name = "valor")
    private String CalculoDetallePasos.valor;
    
    public CalculoDetalle CalculoDetallePasos.getIdCalculoDetalle() {
        return idCalculoDetalle;
    }
    
    public void CalculoDetallePasos.setIdCalculoDetalle(CalculoDetalle idCalculoDetalle) {
        this.idCalculoDetalle = idCalculoDetalle;
    }
    
    public Calendar CalculoDetallePasos.getFechaHoraPosicion() {
        return fechaHoraPosicion;
    }
    
    public void CalculoDetallePasos.setFechaHoraPosicion(Calendar fechaHoraPosicion) {
        this.fechaHoraPosicion = fechaHoraPosicion;
    }
    
    public String CalculoDetallePasos.getPosicion() {
        return posicion;
    }
    
    public void CalculoDetallePasos.setPosicion(String posicion) {
        this.posicion = posicion;
    }
    
    public String CalculoDetallePasos.getValor() {
        return valor;
    }
    
    public void CalculoDetallePasos.setValor(String valor) {
        this.valor = valor;
    }
    
}
