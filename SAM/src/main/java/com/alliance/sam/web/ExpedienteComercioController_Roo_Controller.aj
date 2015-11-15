// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedienteComercio;
import com.alliance.sam.TipoOperacionCargaDescarga;
import com.alliance.sam.web.ExpedienteComercioController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ExpedienteComercioController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ExpedienteComercioController.create(@Valid ExpedienteComercio expedienteComercio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedienteComercio);
            return "expedientecomercios/create";
        }
        uiModel.asMap().clear();
        expedienteComercio.persist();
        return "redirect:/expedientecomercios/" + encodeUrlPathSegment(expedienteComercio.getIdExpedienteComercio().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ExpedienteComercioController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ExpedienteComercio());
        return "expedientecomercios/create";
    }
    
    @RequestMapping(value = "/{idExpedienteComercio}", produces = "text/html")
    public String ExpedienteComercioController.show(@PathVariable("idExpedienteComercio") Integer idExpedienteComercio, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientecomercio", ExpedienteComercio.findExpedienteComercio(idExpedienteComercio));
        uiModel.addAttribute("itemId", idExpedienteComercio);
        return "expedientecomercios/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ExpedienteComercioController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("expedientecomercios", ExpedienteComercio.findExpedienteComercioEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ExpedienteComercio.countExpedienteComercios() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("expedientecomercios", ExpedienteComercio.findAllExpedienteComercios(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "expedientecomercios/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ExpedienteComercioController.update(@Valid ExpedienteComercio expedienteComercio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedienteComercio);
            return "expedientecomercios/update";
        }
        uiModel.asMap().clear();
        expedienteComercio.merge();
        return "redirect:/expedientecomercios/" + encodeUrlPathSegment(expedienteComercio.getIdExpedienteComercio().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idExpedienteComercio}", params = "form", produces = "text/html")
    public String ExpedienteComercioController.updateForm(@PathVariable("idExpedienteComercio") Integer idExpedienteComercio, Model uiModel) {
        populateEditForm(uiModel, ExpedienteComercio.findExpedienteComercio(idExpedienteComercio));
        return "expedientecomercios/update";
    }
    
    @RequestMapping(value = "/{idExpedienteComercio}", method = RequestMethod.DELETE, produces = "text/html")
    public String ExpedienteComercioController.delete(@PathVariable("idExpedienteComercio") Integer idExpedienteComercio, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ExpedienteComercio expedienteComercio = ExpedienteComercio.findExpedienteComercio(idExpedienteComercio);
        expedienteComercio.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/expedientecomercios";
    }
    
    void ExpedienteComercioController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("expedienteComercio_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("expedienteComercio_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void ExpedienteComercioController.populateEditForm(Model uiModel, ExpedienteComercio expedienteComercio) {
        uiModel.addAttribute("expedienteComercio", expedienteComercio);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
        uiModel.addAttribute("tipooperacioncargadescargas", TipoOperacionCargaDescarga.findAllTipoOperacionCargaDescargas());
    }
    
    String ExpedienteComercioController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
