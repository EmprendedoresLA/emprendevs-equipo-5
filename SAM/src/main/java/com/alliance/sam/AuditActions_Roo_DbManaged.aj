// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.AuditActions;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect AuditActions_Roo_DbManaged {
    
    @Column(name = "tabla", length = 45)
    @NotNull
    private String AuditActions.tabla;
    
    @Column(name = "user", length = 45)
    @NotNull
    private String AuditActions.user;
    
    @Column(name = "host", length = 45)
    private String AuditActions.host;
    
    @Column(name = "accion", length = 10)
    @NotNull
    private String AuditActions.accion;
    
    @Column(name = "fecha_hora")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar AuditActions.fechaHora;
    
    @Column(name = "registro_original", length = 3000)
    private String AuditActions.registroOriginal;
    
    @Column(name = "registro_modificado", length = 3000)
    private String AuditActions.registroModificado;
    
    public String AuditActions.getTabla() {
        return tabla;
    }
    
    public void AuditActions.setTabla(String tabla) {
        this.tabla = tabla;
    }
    
    public String AuditActions.getUser() {
        return user;
    }
    
    public void AuditActions.setUser(String user) {
        this.user = user;
    }
    
    public String AuditActions.getHost() {
        return host;
    }
    
    public void AuditActions.setHost(String host) {
        this.host = host;
    }
    
    public String AuditActions.getAccion() {
        return accion;
    }
    
    public void AuditActions.setAccion(String accion) {
        this.accion = accion;
    }
    
    public Calendar AuditActions.getFechaHora() {
        return fechaHora;
    }
    
    public void AuditActions.setFechaHora(Calendar fechaHora) {
        this.fechaHora = fechaHora;
    }
    
    public String AuditActions.getRegistroOriginal() {
        return registroOriginal;
    }
    
    public void AuditActions.setRegistroOriginal(String registroOriginal) {
        this.registroOriginal = registroOriginal;
    }
    
    public String AuditActions.getRegistroModificado() {
        return registroModificado;
    }
    
    public void AuditActions.setRegistroModificado(String registroModificado) {
        this.registroModificado = registroModificado;
    }
    
}