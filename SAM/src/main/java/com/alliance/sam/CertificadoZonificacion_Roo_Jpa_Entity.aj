// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CertificadoZonificacion;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect CertificadoZonificacion_Roo_Jpa_Entity {
    
    declare @type: CertificadoZonificacion: @Entity;
    
    declare @type: CertificadoZonificacion: @Table(name = "certificado_zonificacion");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_certificado_zonificacion")
    private Long CertificadoZonificacion.idCertificadoZonificacion;
    
    public Long CertificadoZonificacion.getIdCertificadoZonificacion() {
        return this.idCertificadoZonificacion;
    }
    
    public void CertificadoZonificacion.setIdCertificadoZonificacion(Long id) {
        this.idCertificadoZonificacion = id;
    }
    
}