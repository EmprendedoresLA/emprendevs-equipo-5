// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CalculoDetalle;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect CalculoDetalle_Roo_Jpa_Entity {
    
    declare @type: CalculoDetalle: @Entity;
    
    declare @type: CalculoDetalle: @Table(name = "calculo_detalle");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_calculo_detalle")
    private Long CalculoDetalle.idCalculoDetalle;
    
    public Long CalculoDetalle.getIdCalculoDetalle() {
        return this.idCalculoDetalle;
    }
    
    public void CalculoDetalle.setIdCalculoDetalle(Long id) {
        this.idCalculoDetalle = id;
    }
    
}