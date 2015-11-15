// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.Expediente;
import com.alliance.sam.TipoEstablecimiento;
import com.alliance.sam.web.TipoEstablecimientoController;
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

privileged aspect TipoEstablecimientoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TipoEstablecimientoController.create(@Valid TipoEstablecimiento tipoEstablecimiento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoEstablecimiento);
            return "tipoestablecimientoes/create";
        }
        uiModel.asMap().clear();
        tipoEstablecimiento.persist();
        return "redirect:/tipoestablecimientoes/" + encodeUrlPathSegment(tipoEstablecimiento.getIdTipoEstablecimiento().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TipoEstablecimientoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TipoEstablecimiento());
        return "tipoestablecimientoes/create";
    }
    
    @RequestMapping(value = "/{idTipoEstablecimiento}", produces = "text/html")
    public String TipoEstablecimientoController.show(@PathVariable("idTipoEstablecimiento") Integer idTipoEstablecimiento, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("tipoestablecimiento", TipoEstablecimiento.findTipoEstablecimiento(idTipoEstablecimiento));
        uiModel.addAttribute("itemId", idTipoEstablecimiento);
        return "tipoestablecimientoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TipoEstablecimientoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tipoestablecimientoes", TipoEstablecimiento.findTipoEstablecimientoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TipoEstablecimiento.countTipoEstablecimientoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tipoestablecimientoes", TipoEstablecimiento.findAllTipoEstablecimientoes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "tipoestablecimientoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TipoEstablecimientoController.update(@Valid TipoEstablecimiento tipoEstablecimiento, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, tipoEstablecimiento);
            return "tipoestablecimientoes/update";
        }
        uiModel.asMap().clear();
        tipoEstablecimiento.merge();
        return "redirect:/tipoestablecimientoes/" + encodeUrlPathSegment(tipoEstablecimiento.getIdTipoEstablecimiento().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idTipoEstablecimiento}", params = "form", produces = "text/html")
    public String TipoEstablecimientoController.updateForm(@PathVariable("idTipoEstablecimiento") Integer idTipoEstablecimiento, Model uiModel) {
        populateEditForm(uiModel, TipoEstablecimiento.findTipoEstablecimiento(idTipoEstablecimiento));
        return "tipoestablecimientoes/update";
    }
    
    @RequestMapping(value = "/{idTipoEstablecimiento}", method = RequestMethod.DELETE, produces = "text/html")
    public String TipoEstablecimientoController.delete(@PathVariable("idTipoEstablecimiento") Integer idTipoEstablecimiento, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TipoEstablecimiento tipoEstablecimiento = TipoEstablecimiento.findTipoEstablecimiento(idTipoEstablecimiento);
        tipoEstablecimiento.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tipoestablecimientoes";
    }
    
    void TipoEstablecimientoController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("tipoEstablecimiento_fechacreacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("tipoEstablecimiento_fechamodificacion_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void TipoEstablecimientoController.populateEditForm(Model uiModel, TipoEstablecimiento tipoEstablecimiento) {
        uiModel.addAttribute("tipoEstablecimiento", tipoEstablecimiento);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("expedientes", Expediente.findAllExpedientes());
    }
    
    String TipoEstablecimientoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
