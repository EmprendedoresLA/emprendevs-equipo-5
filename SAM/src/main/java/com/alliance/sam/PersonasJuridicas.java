package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "personas_juridicas")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "documentoPersonaJuridicas", "domicilioPersonaJuridicas", "expedientePersonaJuridicas", "personaFisicaJuridicas", "personasJuridicasUtes", "personasJuridicasUtes1", "personasJuridicasContactoes", "idTipoPersona", "tipoIva" })
public class PersonasJuridicas {
}
