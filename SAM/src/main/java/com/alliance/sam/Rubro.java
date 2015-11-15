package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "rubro")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "expedienteRubroes", "idPoseeCantidadMedida" })
public class Rubro {
}
