package com.alliance.sam;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "expediente")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "calculoes", "certificadoZonificacions", "datosCatastroes", "datosPlaneamientoes", "ddjjs", "domicilioExpedientes", "expedienteComercios", "expedienteDocumentoes", "expedienteExclusivoDireccions", "expedienteIndustrias", "expedientePersonaFisicas", "expedientePersonaJuridicas", "expedienteRubroes", "inspeccions", "ventaPresuntas", "idExpedienteEstado", "idEstadoDeTramite", "internacion", "idTipoEstablecimiento", "localInterno", "requiereDdjj", "anio", "anioDdjj" })
public class Expediente {
}
