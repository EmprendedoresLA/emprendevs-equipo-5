// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Calculo;
import com.alliance.sam.CalculoDetalle;
import com.alliance.sam.CalculoFiltro;
import com.alliance.sam.Expediente;
import com.alliance.sam.TipoAnio;
import com.alliance.sam.TipoBimestre;
import com.alliance.sam.TipoGeneral;
import com.alliance.sam.TipoTasa;
import com.alliance.sam.web.CalculoController;
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

privileged aspect CalculoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CalculoController.create(@Valid Calculo calculo, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculo);
            return "calculoes/create";
        }
        uiModel.asMap().clear();
        calculo.persist();
        return "redirect:/calculoes/" + encodeUrlPathSegment(calculo.getIdCalculo().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CalculoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Calculo());
        return "calculoes/create";
    }
    
    @RequestMapping(value = "/{idCalculo}", produces = "text/html")
    public String CalculoController.show(@PathVariable("idCalculo") Long idCalculo, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculo", Calculo.findCalculo(idCalculo));
        uiModel.addAttribute("itemId", idCalculo);
        return "calculoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CalculoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("calculoes", Calculo.findCalculoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Calculo.countCalculoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("calculoes", Calculo.findAllCalculoes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "calculoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CalculoController.update(@Valid Calculo calculo, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, calculo);
            return "calculoes/update";
        }
        uiModel.asMap().clear();
        calculo.merge();
        return "redirect:/calculoes/" + encodeUrlPathSegment(calculo.getIdCalculo().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idCalculo}", params = "form", produces = "text/html")
    public String CalculoController.updateForm(@PathVariable("idCalculo") Long idCalculo, Model uiModel) {
        populateEditForm(uiModel, Calculo.findCalculo(idCalculo));
        return "calculoes/update";
    }
    
    @RequestMapping(value = "/{idCalculo}", method = RequestMethod.DELETE, produces = "text/html")
    public String CalculoController.delete(@PathVariable("idCalculo") Long idCalculo, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Calculo calculo = Calculo.findCalculo(idCalculo);
        calculo.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/calculoes";
    }
    
    void CalculoController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("calculo_fechaprimervencimiento_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("calculo_fechasegundovencimiento_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("calculo_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("calculo_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void CalculoController.populateEditForm(Model uiModel, Calculo calculo) {
        uiModel.addAttribute("calculo", calculo);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("calculodetalles", CalculoDetalle.findAllCalculoDetalles());
        uiModel.addAttribute("calculofiltroes", CalculoFiltro.findAllCalculoFiltroes());
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
        uiModel.addAttribute("tipoanios", TipoAnio.findAllTipoAnios());
        uiModel.addAttribute("tipobimestres", TipoBimestre.findAllTipoBimestres());
        uiModel.addAttribute("tipogenerals", TipoGeneral.findAllTipoGenerals());
        uiModel.addAttribute("tipotasas", TipoTasa.findAllTipoTasas());
    }
    
    String CalculoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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