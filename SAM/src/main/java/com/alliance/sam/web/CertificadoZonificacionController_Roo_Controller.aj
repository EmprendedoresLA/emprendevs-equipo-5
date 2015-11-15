// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.CertificadoZonificacion;
import com.alliance.sam.Expediente;
import com.alliance.sam.web.CertificadoZonificacionController;
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

privileged aspect CertificadoZonificacionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CertificadoZonificacionController.create(@Valid CertificadoZonificacion certificadoZonificacion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, certificadoZonificacion);
            return "certificadozonificacions/create";
        }
        uiModel.asMap().clear();
        certificadoZonificacion.persist();
        return "redirect:/certificadozonificacions/" + encodeUrlPathSegment(certificadoZonificacion.getIdCertificadoZonificacion().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CertificadoZonificacionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CertificadoZonificacion());
        return "certificadozonificacions/create";
    }
    
    @RequestMapping(value = "/{idCertificadoZonificacion}", produces = "text/html")
    public String CertificadoZonificacionController.show(@PathVariable("idCertificadoZonificacion") Long idCertificadoZonificacion, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("certificadozonificacion", CertificadoZonificacion.findCertificadoZonificacion(idCertificadoZonificacion));
        uiModel.addAttribute("itemId", idCertificadoZonificacion);
        return "certificadozonificacions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CertificadoZonificacionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("certificadozonificacions", CertificadoZonificacion.findCertificadoZonificacionEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CertificadoZonificacion.countCertificadoZonificacions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("certificadozonificacions", CertificadoZonificacion.findAllCertificadoZonificacions(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "certificadozonificacions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CertificadoZonificacionController.update(@Valid CertificadoZonificacion certificadoZonificacion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, certificadoZonificacion);
            return "certificadozonificacions/update";
        }
        uiModel.asMap().clear();
        certificadoZonificacion.merge();
        return "redirect:/certificadozonificacions/" + encodeUrlPathSegment(certificadoZonificacion.getIdCertificadoZonificacion().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idCertificadoZonificacion}", params = "form", produces = "text/html")
    public String CertificadoZonificacionController.updateForm(@PathVariable("idCertificadoZonificacion") Long idCertificadoZonificacion, Model uiModel) {
        populateEditForm(uiModel, CertificadoZonificacion.findCertificadoZonificacion(idCertificadoZonificacion));
        return "certificadozonificacions/update";
    }
    
    @RequestMapping(value = "/{idCertificadoZonificacion}", method = RequestMethod.DELETE, produces = "text/html")
    public String CertificadoZonificacionController.delete(@PathVariable("idCertificadoZonificacion") Long idCertificadoZonificacion, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CertificadoZonificacion certificadoZonificacion = CertificadoZonificacion.findCertificadoZonificacion(idCertificadoZonificacion);
        certificadoZonificacion.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/certificadozonificacions";
    }
    
    void CertificadoZonificacionController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("certificadoZonificacion_fechapresentacion_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("certificadoZonificacion_fechaemisioncertificado_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("certificadoZonificacion_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("certificadoZonificacion_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void CertificadoZonificacionController.populateEditForm(Model uiModel, CertificadoZonificacion certificadoZonificacion) {
        uiModel.addAttribute("certificadoZonificacion", certificadoZonificacion);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
    }
    
    String CertificadoZonificacionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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