// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.PersonaFisicaJuridica;
import com.alliance.sam.PersonasFisicas;
import com.alliance.sam.PersonasJuridicas;
import com.alliance.sam.web.PersonaFisicaJuridicaController;
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

privileged aspect PersonaFisicaJuridicaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonaFisicaJuridicaController.create(@Valid PersonaFisicaJuridica personaFisicaJuridica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personaFisicaJuridica);
            return "personafisicajuridicas/create";
        }
        uiModel.asMap().clear();
        personaFisicaJuridica.persist();
        return "redirect:/personafisicajuridicas/" + encodeUrlPathSegment(personaFisicaJuridica.getIdPersonaFisicaJuridica().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonaFisicaJuridicaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PersonaFisicaJuridica());
        return "personafisicajuridicas/create";
    }
    
    @RequestMapping(value = "/{idPersonaFisicaJuridica}", produces = "text/html")
    public String PersonaFisicaJuridicaController.show(@PathVariable("idPersonaFisicaJuridica") Integer idPersonaFisicaJuridica, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("personafisicajuridica", PersonaFisicaJuridica.findPersonaFisicaJuridica(idPersonaFisicaJuridica));
        uiModel.addAttribute("itemId", idPersonaFisicaJuridica);
        return "personafisicajuridicas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PersonaFisicaJuridicaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("personafisicajuridicas", PersonaFisicaJuridica.findPersonaFisicaJuridicaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) PersonaFisicaJuridica.countPersonaFisicaJuridicas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("personafisicajuridicas", PersonaFisicaJuridica.findAllPersonaFisicaJuridicas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "personafisicajuridicas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonaFisicaJuridicaController.update(@Valid PersonaFisicaJuridica personaFisicaJuridica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personaFisicaJuridica);
            return "personafisicajuridicas/update";
        }
        uiModel.asMap().clear();
        personaFisicaJuridica.merge();
        return "redirect:/personafisicajuridicas/" + encodeUrlPathSegment(personaFisicaJuridica.getIdPersonaFisicaJuridica().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idPersonaFisicaJuridica}", params = "form", produces = "text/html")
    public String PersonaFisicaJuridicaController.updateForm(@PathVariable("idPersonaFisicaJuridica") Integer idPersonaFisicaJuridica, Model uiModel) {
        populateEditForm(uiModel, PersonaFisicaJuridica.findPersonaFisicaJuridica(idPersonaFisicaJuridica));
        return "personafisicajuridicas/update";
    }
    
    @RequestMapping(value = "/{idPersonaFisicaJuridica}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonaFisicaJuridicaController.delete(@PathVariable("idPersonaFisicaJuridica") Integer idPersonaFisicaJuridica, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PersonaFisicaJuridica personaFisicaJuridica = PersonaFisicaJuridica.findPersonaFisicaJuridica(idPersonaFisicaJuridica);
        personaFisicaJuridica.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personafisicajuridicas";
    }
    
    void PersonaFisicaJuridicaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("personaFisicaJuridica_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("personaFisicaJuridica_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void PersonaFisicaJuridicaController.populateEditForm(Model uiModel, PersonaFisicaJuridica personaFisicaJuridica) {
        uiModel.addAttribute("personaFisicaJuridica", personaFisicaJuridica);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("personasfisicases", PersonasFisicas.findAllPersonasFisicases());
        uiModel.addAttribute("personasjuridicases", PersonasJuridicas.findAllPersonasJuridicases());
    }
    
    String PersonaFisicaJuridicaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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