// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DocumentoPersonaJuridica;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DocumentoPersonaJuridica_Roo_Jpa_Entity {
    
    declare @type: DocumentoPersonaJuridica: @Entity;
    
    declare @type: DocumentoPersonaJuridica: @Table(name = "documento_persona_juridica");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_documento_persona_juridica")
    private Long DocumentoPersonaJuridica.idDocumentoPersonaJuridica;
    
    public Long DocumentoPersonaJuridica.getIdDocumentoPersonaJuridica() {
        return this.idDocumentoPersonaJuridica;
    }
    
    public void DocumentoPersonaJuridica.setIdDocumentoPersonaJuridica(Long id) {
        this.idDocumentoPersonaJuridica = id;
    }
    
}