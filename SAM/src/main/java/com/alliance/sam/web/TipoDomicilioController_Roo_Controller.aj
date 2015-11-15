// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.DomicilioExpediente;
import com.alliance.sam.DomicilioPersonaFisica;
import com.alliance.sam.DomicilioPersonaJuridica;
import com.alliance.sam.TipoDomicilio;
import com.alliance.sam.web.TipoDomicilioController;
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

privileged aspect TipoDomicilioController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoDomicilioController.create(@Valid TipoDomicilio tipoDomicilio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoDomicilio);
            return "tipodomicilios/create";
        }
        uiModel.asMap().clear();
        tipoDomicilio.persist();
        return "redirect:/tipodomicilios/" + encodeUrlPathSegment(tipoDomicilio.getIdTipoDomicilio().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoDomicilioController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoDomicilio());
        return "tipodomicilios/create";
    }
    
    @RequestMapping(value = "/{idTipoDomicilio}", produces = "text/html")
    public String TipoDomicilioController.show(@PathVariable("idTipoDomicilio") Long idTipoDomicilio, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("tipodomicilio", TipoDomicilio.findTipoDomicilio(idTipoDomicilio));
        uiModel.addAttribute("itemId", idTipoDomicilio);
        return "tipodomicilios/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoDomicilioController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipodomicilios", TipoDomicilio.findTipoDomicilioEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TipoDomicilio.countTipoDomicilios() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipodomicilios", TipoDomicilio.findAllTipoDomicilios(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "tipodomicilios/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoDomicilioController.update(@Valid TipoDomicilio tipoDomicilio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoDomicilio);
            return "tipodomicilios/update";
        }
        uiModel.asMap().clear();
        tipoDomicilio.merge();
        return "redirect:/tipodomicilios/" + encodeUrlPathSegment(tipoDomicilio.getIdTipoDomicilio().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idTipoDomicilio}", params = "form", produces = "text/html")
    public String TipoDomicilioController.updateForm(@PathVariable("idTipoDomicilio") Long idTipoDomicilio, Model uiModel) {
        populateEditForm(uiModel, TipoDomicilio.findTipoDomicilio(idTipoDomicilio));
        return "tipodomicilios/update";
    }
    
    @RequestMapping(value = "/{idTipoDomicilio}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoDomicilioController.delete(@PathVariable("idTipoDomicilio") Long idTipoDomicilio, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoDomicilio tipoDomicilio = TipoDomicilio.findTipoDomicilio(idTipoDomicilio);
        tipoDomicilio.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipodomicilios";
    }
    
    void TipoDomicilioController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("tipoDomicilio_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("tipoDomicilio_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void TipoDomicilioController.populateEditForm(Model uiModel, TipoDomicilio tipoDomicilio) {
        uiModel.addAttribute("tipoDomicilio", tipoDomicilio);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("domicilioexpedientes", DomicilioExpediente.findAllDomicilioExpedientes());
        uiModel.addAttribute("domiciliopersonafisicas", DomicilioPersonaFisica.findAllDomicilioPersonaFisicas());
        uiModel.addAttribute("domiciliopersonajuridicas", DomicilioPersonaJuridica.findAllDomicilioPersonaJuridicas());
    }
    
    String TipoDomicilioController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
