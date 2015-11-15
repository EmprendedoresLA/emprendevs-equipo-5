// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.ExpedienteDocumento;
import com.alliance.sam.TipoDocumentoExpediente;
import com.alliance.sam.web.TipoDocumentoExpedienteController;
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

privileged aspect TipoDocumentoExpedienteController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoDocumentoExpedienteController.create(@Valid TipoDocumentoExpediente tipoDocumentoExpediente, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoDocumentoExpediente);
            return "tipodocumentoexpedientes/create";
        }
        uiModel.asMap().clear();
        tipoDocumentoExpediente.persist();
        return "redirect:/tipodocumentoexpedientes/" + encodeUrlPathSegment(tipoDocumentoExpediente.getIdTipoDocumentoExpediente().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoDocumentoExpedienteController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoDocumentoExpediente());
        return "tipodocumentoexpedientes/create";
    }
    
    @RequestMapping(value = "/{idTipoDocumentoExpediente}", produces = "text/html")
    public String TipoDocumentoExpedienteController.show(@PathVariable("idTipoDocumentoExpediente") Long idTipoDocumentoExpediente, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("tipodocumentoexpediente", TipoDocumentoExpediente.findTipoDocumentoExpediente(idTipoDocumentoExpediente));
        uiModel.addAttribute("itemId", idTipoDocumentoExpediente);
        return "tipodocumentoexpedientes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoDocumentoExpedienteController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipodocumentoexpedientes", TipoDocumentoExpediente.findTipoDocumentoExpedienteEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TipoDocumentoExpediente.countTipoDocumentoExpedientes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipodocumentoexpedientes", TipoDocumentoExpediente.findAllTipoDocumentoExpedientes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "tipodocumentoexpedientes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoDocumentoExpedienteController.update(@Valid TipoDocumentoExpediente tipoDocumentoExpediente, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoDocumentoExpediente);
            return "tipodocumentoexpedientes/update";
        }
        uiModel.asMap().clear();
        tipoDocumentoExpediente.merge();
        return "redirect:/tipodocumentoexpedientes/" + encodeUrlPathSegment(tipoDocumentoExpediente.getIdTipoDocumentoExpediente().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idTipoDocumentoExpediente}", params = "form", produces = "text/html")
    public String TipoDocumentoExpedienteController.updateForm(@PathVariable("idTipoDocumentoExpediente") Long idTipoDocumentoExpediente, Model uiModel) {
        populateEditForm(uiModel, TipoDocumentoExpediente.findTipoDocumentoExpediente(idTipoDocumentoExpediente));
        return "tipodocumentoexpedientes/update";
    }
    
    @RequestMapping(value = "/{idTipoDocumentoExpediente}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoDocumentoExpedienteController.delete(@PathVariable("idTipoDocumentoExpediente") Long idTipoDocumentoExpediente, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoDocumentoExpediente tipoDocumentoExpediente = TipoDocumentoExpediente.findTipoDocumentoExpediente(idTipoDocumentoExpediente);
        tipoDocumentoExpediente.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipodocumentoexpedientes";
    }
    
    void TipoDocumentoExpedienteController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("tipoDocumentoExpediente_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("tipoDocumentoExpediente_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void TipoDocumentoExpedienteController.populateEditForm(Model uiModel, TipoDocumentoExpediente tipoDocumentoExpediente) {
        uiModel.addAttribute("tipoDocumentoExpediente", tipoDocumentoExpediente);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientedocumentoes", ExpedienteDocumento.findAllExpedienteDocumentoes());
    }
    
    String TipoDocumentoExpedienteController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
