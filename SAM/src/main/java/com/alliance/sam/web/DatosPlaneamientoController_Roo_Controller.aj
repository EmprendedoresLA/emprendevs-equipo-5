// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.DatosPlaneamiento;
import com.alliance.sam.Expediente;
import com.alliance.sam.web.DatosPlaneamientoController;
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

privileged aspect DatosPlaneamientoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DatosPlaneamientoController.create(@Valid DatosPlaneamiento datosPlaneamiento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, datosPlaneamiento);
            return "datosplaneamientoes/create";
        }
        uiModel.asMap().clear();
        datosPlaneamiento.persist();
        return "redirect:/datosplaneamientoes/" + encodeUrlPathSegment(datosPlaneamiento.getIdPlaneamiento().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DatosPlaneamientoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DatosPlaneamiento());
        return "datosplaneamientoes/create";
    }
    
    @RequestMapping(value = "/{idPlaneamiento}", produces = "text/html")
    public String DatosPlaneamientoController.show(@PathVariable("idPlaneamiento") Long idPlaneamiento, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("datosplaneamiento", DatosPlaneamiento.findDatosPlaneamiento(idPlaneamiento));
        uiModel.addAttribute("itemId", idPlaneamiento);
        return "datosplaneamientoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DatosPlaneamientoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("datosplaneamientoes", DatosPlaneamiento.findDatosPlaneamientoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) DatosPlaneamiento.countDatosPlaneamientoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("datosplaneamientoes", DatosPlaneamiento.findAllDatosPlaneamientoes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "datosplaneamientoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DatosPlaneamientoController.update(@Valid DatosPlaneamiento datosPlaneamiento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, datosPlaneamiento);
            return "datosplaneamientoes/update";
        }
        uiModel.asMap().clear();
        datosPlaneamiento.merge();
        return "redirect:/datosplaneamientoes/" + encodeUrlPathSegment(datosPlaneamiento.getIdPlaneamiento().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idPlaneamiento}", params = "form", produces = "text/html")
    public String DatosPlaneamientoController.updateForm(@PathVariable("idPlaneamiento") Long idPlaneamiento, Model uiModel) {
        populateEditForm(uiModel, DatosPlaneamiento.findDatosPlaneamiento(idPlaneamiento));
        return "datosplaneamientoes/update";
    }
    
    @RequestMapping(value = "/{idPlaneamiento}", method = RequestMethod.DELETE, produces = "text/html")
    public String DatosPlaneamientoController.delete(@PathVariable("idPlaneamiento") Long idPlaneamiento, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DatosPlaneamiento datosPlaneamiento = DatosPlaneamiento.findDatosPlaneamiento(idPlaneamiento);
        datosPlaneamiento.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/datosplaneamientoes";
    }
    
    void DatosPlaneamientoController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("datosPlaneamiento_m2totales_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("datosPlaneamiento_cargadescargaobligatoria_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("datosPlaneamiento_fechaaprobacion_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("datosPlaneamiento_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("datosPlaneamiento_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void DatosPlaneamientoController.populateEditForm(Model uiModel, DatosPlaneamiento datosPlaneamiento) {
        uiModel.addAttribute("datosPlaneamiento", datosPlaneamiento);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
    }
    
    String DatosPlaneamientoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
