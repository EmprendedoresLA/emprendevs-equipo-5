// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.DiferenciaXVentaXZona;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DiferenciaXVentaXZona_Roo_Jpa_Entity {
    
    declare @type: DiferenciaXVentaXZona: @Entity;
    
    declare @type: DiferenciaXVentaXZona: @Table(name = "diferencia_x_venta_x_zona");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_diferencia_x_venta_x_zona")
    private Long DiferenciaXVentaXZona.idDiferenciaXVentaXZona;
    
    public Long DiferenciaXVentaXZona.getIdDiferenciaXVentaXZona() {
        return this.idDiferenciaXVentaXZona;
    }
    
    public void DiferenciaXVentaXZona.setIdDiferenciaXVentaXZona(Long id) {
        this.idDiferenciaXVentaXZona = id;
    }
    
}