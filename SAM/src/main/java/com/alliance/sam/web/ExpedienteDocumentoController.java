package com.alliance.sam.web;
import com.alliance.sam.ExpedienteDocumento;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/expedientedocumentoes")
@Controller
@RooWebScaffold(path = "expedientedocumentoes", formBackingObject = ExpedienteDocumento.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class ExpedienteDocumentoController {
}