// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TipoPersona;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect TipoPersona_Roo_Jpa_Entity {
    
    declare @type: TipoPersona: @Entity;
    
    declare @type: TipoPersona: @Table(name = "tipo_persona");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_tipo_persona")
    private Long TipoPersona.idTipoPersona;
    
    public Long TipoPersona.getIdTipoPersona() {
        return this.idTipoPersona;
    }
    
    public void TipoPersona.setIdTipoPersona(Long id) {
        this.idTipoPersona = id;
    }
    
}