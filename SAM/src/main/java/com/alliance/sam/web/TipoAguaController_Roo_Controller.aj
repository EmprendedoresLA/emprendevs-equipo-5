// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.TipoAgua;
import com.alliance.sam.web.TipoAguaController;
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

privileged aspect TipoAguaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoAguaController.create(@Valid TipoAgua tipoAgua, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoAgua);
            return "tipoaguas/create";
        }
        uiModel.asMap().clear();
        tipoAgua.persist();
        return "redirect:/tipoaguas/" + encodeUrlPathSegment(tipoAgua.getIdTipoAgua().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoAguaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoAgua());
        return "tipoaguas/create";
    }
    
    @RequestMapping(value = "/{idTipoAgua}", produces = "text/html")
    public String TipoAguaController.show(@PathVariable("idTipoAgua") Long idTipoAgua, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("tipoagua", TipoAgua.findTipoAgua(idTipoAgua));
        uiModel.addAttribute("itemId", idTipoAgua);
        return "tipoaguas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoAguaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipoaguas", TipoAgua.findTipoAguaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TipoAgua.countTipoAguas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipoaguas", TipoAgua.findAllTipoAguas(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "tipoaguas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoAguaController.update(@Valid TipoAgua tipoAgua, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoAgua);
            return "tipoaguas/update";
        }
        uiModel.asMap().clear();
        tipoAgua.merge();
        return "redirect:/tipoaguas/" + encodeUrlPathSegment(tipoAgua.getIdTipoAgua().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idTipoAgua}", params = "form", produces = "text/html")
    public String TipoAguaController.updateForm(@PathVariable("idTipoAgua") Long idTipoAgua, Model uiModel) {
        populateEditForm(uiModel, TipoAgua.findTipoAgua(idTipoAgua));
        return "tipoaguas/update";
    }
    
    @RequestMapping(value = "/{idTipoAgua}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoAguaController.delete(@PathVariable("idTipoAgua") Long idTipoAgua, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoAgua tipoAgua = TipoAgua.findTipoAgua(idTipoAgua);
        tipoAgua.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipoaguas";
    }
    
    void TipoAguaController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("tipoAgua_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("tipoAgua_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void TipoAguaController.populateEditForm(Model uiModel, TipoAgua tipoAgua) {
        uiModel.addAttribute("tipoAgua", tipoAgua);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String TipoAguaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
