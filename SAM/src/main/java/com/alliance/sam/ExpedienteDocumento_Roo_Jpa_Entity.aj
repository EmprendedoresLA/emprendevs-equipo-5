// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.ExpedienteDocumento;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect ExpedienteDocumento_Roo_Jpa_Entity {
    
    declare @type: ExpedienteDocumento: @Entity;
    
    declare @type: ExpedienteDocumento: @Table(name = "expediente_documento");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_expediente_documento")
    private Long ExpedienteDocumento.idExpedienteDocumento;
    
    public Long ExpedienteDocumento.getIdExpedienteDocumento() {
        return this.idExpedienteDocumento;
    }
    
    public void ExpedienteDocumento.setIdExpedienteDocumento(Long id) {
        this.idExpedienteDocumento = id;
    }
    
}