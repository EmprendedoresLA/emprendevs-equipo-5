// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Calculo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Calculo_Roo_Jpa_Entity {
    
    declare @type: Calculo: @Entity;
    
    declare @type: Calculo: @Table(name = "calculo");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_calculo")
    private Long Calculo.idCalculo;
    
    public Long Calculo.getIdCalculo() {
        return this.idCalculo;
    }
    
    public void Calculo.setIdCalculo(Long id) {
        this.idCalculo = id;
    }
    
}