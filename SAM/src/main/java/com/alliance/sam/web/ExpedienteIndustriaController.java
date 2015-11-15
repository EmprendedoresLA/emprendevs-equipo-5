package com.alliance.sam.web;
import com.alliance.sam.ExpedienteIndustria;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/expedienteindustrias")
@Controller
@RooWebScaffold(path = "expedienteindustrias", formBackingObject = ExpedienteIndustria.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class ExpedienteIndustriaController {
}
