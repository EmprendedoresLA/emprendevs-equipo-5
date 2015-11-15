// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Calle;
import com.alliance.sam.DomicilioPersonaJuridica;
import com.alliance.sam.Localidad;
import com.alliance.sam.Pais;
import com.alliance.sam.Partido;
import com.alliance.sam.PersonasJuridicas;
import com.alliance.sam.Provincia;
import com.alliance.sam.TipoDomicilio;
import com.alliance.sam.Zona;
import com.alliance.sam.web.DomicilioPersonaJuridicaController;
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

privileged aspect DomicilioPersonaJuridicaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DomicilioPersonaJuridicaController.create(@Valid DomicilioPersonaJuridica domicilioPersonaJuridica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, domicilioPersonaJuridica);
            return "domiciliopersonajuridicas/create";
        }
        uiModel.asMap().clear();
        domicilioPersonaJuridica.persist();
        return "redirect:/domiciliopersonajuridicas/" + encodeUrlPathSegment(domicilioPersonaJuridica.getIdDomicilio().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DomicilioPersonaJuridicaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DomicilioPersonaJuridica());
        return "domiciliopersonajuridicas/create";
    }
    
    @RequestMapping(value = "/{idDomicilio}", produces = "text/html")
    public String DomicilioPersonaJuridicaController.show(@PathVariable("idDomicilio") Long idDomicilio, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("domiciliopersonajuridica", DomicilioPersonaJuridica.findDomicilioPersonaJuridica(idDomicilio));
        uiModel.addAttribute("itemId", idDomicilio);
        return "domiciliopersonajuridicas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DomicilioPersonaJuridicaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("domiciliopersonajuridicas", DomicilioPersonaJuridica.findDomicilioPersonaJuridicaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DomicilioPersonaJuridica.countDomicilioPersonaJuridicas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("domiciliopersonajuridicas", DomicilioPersonaJuridica.findAllDomicilioPersonaJuridicas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "domiciliopersonajuridicas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DomicilioPersonaJuridicaController.update(@Valid DomicilioPersonaJuridica domicilioPersonaJuridica, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, domicilioPersonaJuridica);
            return "domiciliopersonajuridicas/update";
        }
        uiModel.asMap().clear();
        domicilioPersonaJuridica.merge();
        return "redirect:/domiciliopersonajuridicas/" + encodeUrlPathSegment(domicilioPersonaJuridica.getIdDomicilio().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idDomicilio}", params = "form", produces = "text/html")
    public String DomicilioPersonaJuridicaController.updateForm(@PathVariable("idDomicilio") Long idDomicilio, Model uiModel) {
        populateEditForm(uiModel, DomicilioPersonaJuridica.findDomicilioPersonaJuridica(idDomicilio));
        return "domiciliopersonajuridicas/update";
    }
    
    @RequestMapping(value = "/{idDomicilio}", method = RequestMethod.DELETE, produces = "text/html")
    public String DomicilioPersonaJuridicaController.delete(@PathVariable("idDomicilio") Long idDomicilio, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DomicilioPersonaJuridica domicilioPersonaJuridica = DomicilioPersonaJuridica.findDomicilioPersonaJuridica(idDomicilio);
        domicilioPersonaJuridica.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/domiciliopersonajuridicas";
    }
    
    void DomicilioPersonaJuridicaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("domicilioPersonaJuridica_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("domicilioPersonaJuridica_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void DomicilioPersonaJuridicaController.populateEditForm(Model uiModel, DomicilioPersonaJuridica domicilioPersonaJuridica) {
        uiModel.addAttribute("domicilioPersonaJuridica", domicilioPersonaJuridica);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calles", Calle.findAllCalles());
        uiModel.addAttribute("localidads", Localidad.findAllLocalidads());
        uiModel.addAttribute("paises", Pais.findAllPaises());
        uiModel.addAttribute("partidoes", Partido.findAllPartidoes());
        uiModel.addAttribute("personasjuridicases", PersonasJuridicas.findAllPersonasJuridicases());
        uiModel.addAttribute("provincias", Provincia.findAllProvincias());
        uiModel.addAttribute("tipodomicilios", TipoDomicilio.findAllTipoDomicilios());
        uiModel.addAttribute("zonas", Zona.findAllZonas());
    }
    
    String DomicilioPersonaJuridicaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
