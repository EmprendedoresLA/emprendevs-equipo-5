// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Zona;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect Zona_Roo_ToString {
    
    public String Zona.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("coeficienteXZonas", "diferenciaXVentaXZonas", "domicilioExpedientes", "domicilioPersonaFisicas", "domicilioPersonaJuridicas").toString();
    }
    
}
