// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.ValorModulo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect ValorModulo_Roo_Jpa_Entity {
    
    declare @type: ValorModulo: @Entity;
    
    declare @type: ValorModulo: @Table(name = "valor_modulo");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_valor_modulo")
    private Long ValorModulo.idValorModulo;
    
    public Long ValorModulo.getIdValorModulo() {
        return this.idValorModulo;
    }
    
    public void ValorModulo.setIdValorModulo(Long id) {
        this.idValorModulo = id;
    }
    
}