// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TipoTasa;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect TipoTasa_Roo_Jpa_Entity {
    
    declare @type: TipoTasa: @Entity;
    
    declare @type: TipoTasa: @Table(name = "tipo_tasa");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_tipo_tasa")
    private Long TipoTasa.idTipoTasa;
    
    public Long TipoTasa.getIdTipoTasa() {
        return this.idTipoTasa;
    }
    
    public void TipoTasa.setIdTipoTasa(Long id) {
        this.idTipoTasa = id;
    }
    
}