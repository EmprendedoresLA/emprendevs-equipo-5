package com.alliance.sam.web;
import com.alliance.sam.Calculo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/calculoes")
@Controller
@RooWebScaffold(path = "calculoes", formBackingObject = Calculo.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class CalculoController {
}