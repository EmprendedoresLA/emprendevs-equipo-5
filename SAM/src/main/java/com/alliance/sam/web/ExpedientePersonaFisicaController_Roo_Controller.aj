// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Expediente;
import com.alliance.sam.ExpedientePersonaFisica;
import com.alliance.sam.PersonasFisicas;
import com.alliance.sam.web.ExpedientePersonaFisicaController;
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

privileged aspect ExpedientePersonaFisicaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ExpedientePersonaFisicaController.create(@Valid ExpedientePersonaFisica expedientePersonaFisica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedientePersonaFisica);
            return "expedientepersonafisicas/create";
        }
        uiModel.asMap().clear();
        expedientePersonaFisica.persist();
        return "redirect:/expedientepersonafisicas/" + encodeUrlPathSegment(expedientePersonaFisica.getIdExpedientePersonaFisica().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ExpedientePersonaFisicaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ExpedientePersonaFisica());
        return "expedientepersonafisicas/create";
    }
    
    @RequestMapping(value = "/{idExpedientePersonaFisica}", produces = "text/html")
    public String ExpedientePersonaFisicaController.show(@PathVariable("idExpedientePersonaFisica") Long idExpedientePersonaFisica, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientepersonafisica", ExpedientePersonaFisica.findExpedientePersonaFisica(idExpedientePersonaFisica));
        uiModel.addAttribute("itemId", idExpedientePersonaFisica);
        return "expedientepersonafisicas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ExpedientePersonaFisicaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("expedientepersonafisicas", ExpedientePersonaFisica.findExpedientePersonaFisicaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ExpedientePersonaFisica.countExpedientePersonaFisicas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("expedientepersonafisicas", ExpedientePersonaFisica.findAllExpedientePersonaFisicas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "expedientepersonafisicas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ExpedientePersonaFisicaController.update(@Valid ExpedientePersonaFisica expedientePersonaFisica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, expedientePersonaFisica);
            return "expedientepersonafisicas/update";
        }
        uiModel.asMap().clear();
        expedientePersonaFisica.merge();
        return "redirect:/expedientepersonafisicas/" + encodeUrlPathSegment(expedientePersonaFisica.getIdExpedientePersonaFisica().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idExpedientePersonaFisica}", params = "form", produces = "text/html")
    public String ExpedientePersonaFisicaController.updateForm(@PathVariable("idExpedientePersonaFisica") Long idExpedientePersonaFisica, Model uiModel) {
        populateEditForm(uiModel, ExpedientePersonaFisica.findExpedientePersonaFisica(idExpedientePersonaFisica));
        return "expedientepersonafisicas/update";
    }
    
    @RequestMapping(value = "/{idExpedientePersonaFisica}", method = RequestMethod.DELETE, produces = "text/html")
    public String ExpedientePersonaFisicaController.delete(@PathVariable("idExpedientePersonaFisica") Long idExpedientePersonaFisica, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ExpedientePersonaFisica expedientePersonaFisica = ExpedientePersonaFisica.findExpedientePersonaFisica(idExpedientePersonaFisica);
        expedientePersonaFisica.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/expedientepersonafisicas";
    }
    
    void ExpedientePersonaFisicaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("expedientePersonaFisica_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("expedientePersonaFisica_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void ExpedientePersonaFisicaController.populateEditForm(Model uiModel, ExpedientePersonaFisica expedientePersonaFisica) {
        uiModel.addAttribute("expedientePersonaFisica", expedientePersonaFisica);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
        uiModel.addAttribute("personasfisicases", PersonasFisicas.findAllPersonasFisicases());
    }
    
    String ExpedientePersonaFisicaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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