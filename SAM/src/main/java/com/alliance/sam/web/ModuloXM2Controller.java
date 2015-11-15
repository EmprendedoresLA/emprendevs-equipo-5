package com.alliance.sam.web;
import com.alliance.sam.ModuloXM2;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;

@RequestMapping("/moduloxm2s")
@Controller
@RooWebScaffold(path = "moduloxm2s", formBackingObject = ModuloXM2.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true)
public class ModuloXM2Controller {
}
