package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "domicilio_persona_fisica")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "idPais", "idProvincia", "idLocalidad", "idPartido", "idZona", "idCalle", "idTipoDomicilio", "idPersonaFisica" })
public class DomicilioPersonaFisica {
}
