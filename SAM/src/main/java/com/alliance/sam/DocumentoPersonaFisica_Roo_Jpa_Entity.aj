// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DocumentoPersonaFisica;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DocumentoPersonaFisica_Roo_Jpa_Entity {
    
    declare @type: DocumentoPersonaFisica: @Entity;
    
    declare @type: DocumentoPersonaFisica: @Table(name = "documento_persona_fisica");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_documento_persona_fisica")
    private Long DocumentoPersonaFisica.idDocumentoPersonaFisica;
    
    public Long DocumentoPersonaFisica.getIdDocumentoPersonaFisica() {
        return this.idDocumentoPersonaFisica;
    }
    
    public void DocumentoPersonaFisica.setIdDocumentoPersonaFisica(Long id) {
        this.idDocumentoPersonaFisica = id;
    }
    
}