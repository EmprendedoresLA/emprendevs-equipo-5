// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Inspeccion;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Inspeccion_Roo_Jpa_Entity {
    
    declare @type: Inspeccion: @Entity;
    
    declare @type: Inspeccion: @Table(name = "inspeccion");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_inspeccion")
    private Long Inspeccion.idInspeccion;
    
    public Long Inspeccion.getIdInspeccion() {
        return this.idInspeccion;
    }
    
    public void Inspeccion.setIdInspeccion(Long id) {
        this.idInspeccion = id;
    }
    
}