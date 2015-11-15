// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.PersonasFisicas;
import com.alliance.sam.PersonasJuridicas;
import com.alliance.sam.TipoIva;
import com.alliance.sam.web.TipoIvaController;
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

privileged aspect TipoIvaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoIvaController.create(@Valid TipoIva tipoIva, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoIva);
            return "tipoivas/create";
        }
        uiModel.asMap().clear();
        tipoIva.persist();
        return "redirect:/tipoivas/" + encodeUrlPathSegment(tipoIva.getIdTipoIva().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoIvaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoIva());
        return "tipoivas/create";
    }
    
    @RequestMapping(value = "/{idTipoIva}", produces = "text/html")
    public String TipoIvaController.show(@PathVariable("idTipoIva") Long idTipoIva, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("tipoiva", TipoIva.findTipoIva(idTipoIva));
        uiModel.addAttribute("itemId", idTipoIva);
        return "tipoivas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoIvaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipoivas", TipoIva.findTipoIvaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TipoIva.countTipoIvas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipoivas", TipoIva.findAllTipoIvas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "tipoivas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoIvaController.update(@Valid TipoIva tipoIva, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoIva);
            return "tipoivas/update";
        }
        uiModel.asMap().clear();
        tipoIva.merge();
        return "redirect:/tipoivas/" + encodeUrlPathSegment(tipoIva.getIdTipoIva().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idTipoIva}", params = "form", produces = "text/html")
    public String TipoIvaController.updateForm(@PathVariable("idTipoIva") Long idTipoIva, Model uiModel) {
        populateEditForm(uiModel, TipoIva.findTipoIva(idTipoIva));
        return "tipoivas/update";
    }
    
    @RequestMapping(value = "/{idTipoIva}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoIvaController.delete(@PathVariable("idTipoIva") Long idTipoIva, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoIva tipoIva = TipoIva.findTipoIva(idTipoIva);
        tipoIva.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipoivas";
    }
    
    void TipoIvaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("tipoIva_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("tipoIva_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void TipoIvaController.populateEditForm(Model uiModel, TipoIva tipoIva) {
        uiModel.addAttribute("tipoIva", tipoIva);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("personasfisicases", PersonasFisicas.findAllPersonasFisicases());
        uiModel.addAttribute("personasjuridicases", PersonasJuridicas.findAllPersonasJuridicases());
    }
    
    String TipoIvaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
