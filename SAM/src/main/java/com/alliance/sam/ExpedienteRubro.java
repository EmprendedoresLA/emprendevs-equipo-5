package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "expediente_rubro")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "idExpedienteControl", "idRubro" })
public class ExpedienteRubro {
}
