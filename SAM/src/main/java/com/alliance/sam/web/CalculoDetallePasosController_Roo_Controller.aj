// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.CalculoDetalle;
import com.alliance.sam.CalculoDetallePasos;
import com.alliance.sam.web.CalculoDetallePasosController;
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

privileged aspect CalculoDetallePasosController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CalculoDetallePasosController.create(@Valid CalculoDetallePasos calculoDetallePasos, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculoDetallePasos);
            return "calculodetallepasoses/create";
        }
        uiModel.asMap().clear();
        calculoDetallePasos.persist();
        return "redirect:/calculodetallepasoses/" + encodeUrlPathSegment(calculoDetallePasos.getIdCalculoDetallePasos().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CalculoDetallePasosController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CalculoDetallePasos());
        return "calculodetallepasoses/create";
    }
    
    @RequestMapping(value = "/{idCalculoDetallePasos}", produces = "text/html")
    public String CalculoDetallePasosController.show(@PathVariable("idCalculoDetallePasos") Integer idCalculoDetallePasos, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculodetallepasos", CalculoDetallePasos.findCalculoDetallePasos(idCalculoDetallePasos));
        uiModel.addAttribute("itemId", idCalculoDetallePasos);
        return "calculodetallepasoses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CalculoDetallePasosController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("calculodetallepasoses", CalculoDetallePasos.findCalculoDetallePasosEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CalculoDetallePasos.countCalculoDetallePasoses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("calculodetallepasoses", CalculoDetallePasos.findAllCalculoDetallePasoses(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "calculodetallepasoses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CalculoDetallePasosController.update(@Valid CalculoDetallePasos calculoDetallePasos, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculoDetallePasos);
            return "calculodetallepasoses/update";
        }
        uiModel.asMap().clear();
        calculoDetallePasos.merge();
        return "redirect:/calculodetallepasoses/" + encodeUrlPathSegment(calculoDetallePasos.getIdCalculoDetallePasos().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idCalculoDetallePasos}", params = "form", produces = "text/html")
    public String CalculoDetallePasosController.updateForm(@PathVariable("idCalculoDetallePasos") Integer idCalculoDetallePasos, Model uiModel) {
        populateEditForm(uiModel, CalculoDetallePasos.findCalculoDetallePasos(idCalculoDetallePasos));
        return "calculodetallepasoses/update";
    }
    
    @RequestMapping(value = "/{idCalculoDetallePasos}", method = RequestMethod.DELETE, produces = "text/html")
    public String CalculoDetallePasosController.delete(@PathVariable("idCalculoDetallePasos") Integer idCalculoDetallePasos, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CalculoDetallePasos calculoDetallePasos = CalculoDetallePasos.findCalculoDetallePasos(idCalculoDetallePasos);
        calculoDetallePasos.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/calculodetallepasoses";
    }
    
    void CalculoDetallePasosController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("calculoDetallePasos_fechahoraposicion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void CalculoDetallePasosController.populateEditForm(Model uiModel, CalculoDetallePasos calculoDetallePasos) {
        uiModel.addAttribute("calculoDetallePasos", calculoDetallePasos);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculodetalles", CalculoDetalle.findAllCalculoDetalles());
    }
    
    String CalculoDetallePasosController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
