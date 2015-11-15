// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Calculo;
import com.alliance.sam.CalculoFiltro;
import com.alliance.sam.TipoNombreColumna;
import com.alliance.sam.TipoNombreTabla;
import com.alliance.sam.web.CalculoFiltroController;
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

privileged aspect CalculoFiltroController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CalculoFiltroController.create(@Valid CalculoFiltro calculoFiltro, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculoFiltro);
            return "calculofiltroes/create";
        }
        uiModel.asMap().clear();
        calculoFiltro.persist();
        return "redirect:/calculofiltroes/" + encodeUrlPathSegment(calculoFiltro.getIdCalculoFiltro().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CalculoFiltroController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CalculoFiltro());
        return "calculofiltroes/create";
    }
    
    @RequestMapping(value = "/{idCalculoFiltro}", produces = "text/html")
    public String CalculoFiltroController.show(@PathVariable("idCalculoFiltro") Long idCalculoFiltro, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculofiltro", CalculoFiltro.findCalculoFiltro(idCalculoFiltro));
        uiModel.addAttribute("itemId", idCalculoFiltro);
        return "calculofiltroes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CalculoFiltroController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("calculofiltroes", CalculoFiltro.findCalculoFiltroEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CalculoFiltro.countCalculoFiltroes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("calculofiltroes", CalculoFiltro.findAllCalculoFiltroes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "calculofiltroes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CalculoFiltroController.update(@Valid CalculoFiltro calculoFiltro, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculoFiltro);
            return "calculofiltroes/update";
        }
        uiModel.asMap().clear();
        calculoFiltro.merge();
        return "redirect:/calculofiltroes/" + encodeUrlPathSegment(calculoFiltro.getIdCalculoFiltro().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idCalculoFiltro}", params = "form", produces = "text/html")
    public String CalculoFiltroController.updateForm(@PathVariable("idCalculoFiltro") Long idCalculoFiltro, Model uiModel) {
        populateEditForm(uiModel, CalculoFiltro.findCalculoFiltro(idCalculoFiltro));
        return "calculofiltroes/update";
    }
    
    @RequestMapping(value = "/{idCalculoFiltro}", method = RequestMethod.DELETE, produces = "text/html")
    public String CalculoFiltroController.delete(@PathVariable("idCalculoFiltro") Long idCalculoFiltro, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CalculoFiltro calculoFiltro = CalculoFiltro.findCalculoFiltro(idCalculoFiltro);
        calculoFiltro.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/calculofiltroes";
    }
    
    void CalculoFiltroController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("calculoFiltro_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("calculoFiltro_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void CalculoFiltroController.populateEditForm(Model uiModel, CalculoFiltro calculoFiltro) {
        uiModel.addAttribute("calculoFiltro", calculoFiltro);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculoes", Calculo.findAllCalculoes());
        uiModel.addAttribute("tiponombrecolumnas", TipoNombreColumna.findAllTipoNombreColumnas());
        uiModel.addAttribute("tiponombretablas", TipoNombreTabla.findAllTipoNombreTablas());
    }
    
    String CalculoFiltroController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
