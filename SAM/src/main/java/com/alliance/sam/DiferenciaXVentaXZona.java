package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "diferencia_x_venta_x_zona")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "idZona" })
public class DiferenciaXVentaXZona {
}
