// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Partido;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Partido_Roo_Jpa_Entity {
    
    declare @type: Partido: @Entity;
    
    declare @type: Partido: @Table(name = "partido");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_partido")
    private Long Partido.idPartido;
    
    public Long Partido.getIdPartido() {
        return this.idPartido;
    }
    
    public void Partido.setIdPartido(Long id) {
        this.idPartido = id;
    }
    
}