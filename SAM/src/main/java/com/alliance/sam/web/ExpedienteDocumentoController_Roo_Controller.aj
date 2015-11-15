// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedienteDocumento;
import com.alliance.sam.TipoDocumentoExpediente;
import com.alliance.sam.web.ExpedienteDocumentoController;
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

privileged aspect ExpedienteDocumentoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ExpedienteDocumentoController.create(@Valid ExpedienteDocumento expedienteDocumento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedienteDocumento);
            return "expedientedocumentoes/create";
        }
        uiModel.asMap().clear();
        expedienteDocumento.persist();
        return "redirect:/expedientedocumentoes/" + encodeUrlPathSegment(expedienteDocumento.getIdExpedienteDocumento().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ExpedienteDocumentoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ExpedienteDocumento());
        return "expedientedocumentoes/create";
    }
    
    @RequestMapping(value = "/{idExpedienteDocumento}", produces = "text/html")
    public String ExpedienteDocumentoController.show(@PathVariable("idExpedienteDocumento") Long idExpedienteDocumento, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientedocumento", ExpedienteDocumento.findExpedienteDocumento(idExpedienteDocumento));
        uiModel.addAttribute("itemId", idExpedienteDocumento);
        return "expedientedocumentoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ExpedienteDocumentoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("expedientedocumentoes", ExpedienteDocumento.findExpedienteDocumentoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ExpedienteDocumento.countExpedienteDocumentoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("expedientedocumentoes", ExpedienteDocumento.findAllExpedienteDocumentoes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "expedientedocumentoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ExpedienteDocumentoController.update(@Valid ExpedienteDocumento expedienteDocumento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedienteDocumento);
            return "expedientedocumentoes/update";
        }
        uiModel.asMap().clear();
        expedienteDocumento.merge();
        return "redirect:/expedientedocumentoes/" + encodeUrlPathSegment(expedienteDocumento.getIdExpedienteDocumento().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idExpedienteDocumento}", params = "form", produces = "text/html")
    public String ExpedienteDocumentoController.updateForm(@PathVariable("idExpedienteDocumento") Long idExpedienteDocumento, Model uiModel) {
        populateEditForm(uiModel, ExpedienteDocumento.findExpedienteDocumento(idExpedienteDocumento));
        return "expedientedocumentoes/update";
    }
    
    @RequestMapping(value = "/{idExpedienteDocumento}", method = RequestMethod.DELETE, produces = "text/html")
    public String ExpedienteDocumentoController.delete(@PathVariable("idExpedienteDocumento") Long idExpedienteDocumento, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ExpedienteDocumento expedienteDocumento = ExpedienteDocumento.findExpedienteDocumento(idExpedienteDocumento);
        expedienteDocumento.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/expedientedocumentoes";
    }
    
    void ExpedienteDocumentoController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("expedienteDocumento_fechavigencia_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("expedienteDocumento_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("expedienteDocumento_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void ExpedienteDocumentoController.populateEditForm(Model uiModel, ExpedienteDocumento expedienteDocumento) {
        uiModel.addAttribute("expedienteDocumento", expedienteDocumento);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
        uiModel.addAttribute("tipodocumentoexpedientes", TipoDocumentoExpediente.findAllTipoDocumentoExpedientes());
    }
    
    String ExpedienteDocumentoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
