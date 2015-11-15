// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam.web;

import com.alliance.sam.AuditActions;
import com.alliance.sam.web.AuditActionsController;
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

privileged aspect AuditActionsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String AuditActionsController.create(@Valid AuditActions auditActions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, auditActions);
            return "auditactionses/create";
        }
        uiModel.asMap().clear();
        auditActions.persist();
        return "redirect:/auditactionses/" + encodeUrlPathSegment(auditActions.getIdAuditActions().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String AuditActionsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new AuditActions());
        return "auditactionses/create";
    }
    
    @RequestMapping(value = "/{idAuditActions}", produces = "text/html")
    public String AuditActionsController.show(@PathVariable("idAuditActions") Integer idAuditActions, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("auditactions", AuditActions.findAuditActions(idAuditActions));
        uiModel.addAttribute("itemId", idAuditActions);
        return "auditactionses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String AuditActionsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("auditactionses", AuditActions.findAuditActionsEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) AuditActions.countAuditActionses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("auditactionses", AuditActions.findAllAuditActionses(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "auditactionses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String AuditActionsController.update(@Valid AuditActions auditActions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, auditActions);
            return "auditactionses/update";
        }
        uiModel.asMap().clear();
        auditActions.merge();
        return "redirect:/auditactionses/" + encodeUrlPathSegment(auditActions.getIdAuditActions().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{idAuditActions}", params = "form", produces = "text/html")
    public String AuditActionsController.updateForm(@PathVariable("idAuditActions") Integer idAuditActions, Model uiModel) {
        populateEditForm(uiModel, AuditActions.findAuditActions(idAuditActions));
        return "auditactionses/update";
    }
    
    @RequestMapping(value = "/{idAuditActions}", method = RequestMethod.DELETE, produces = "text/html")
    public String AuditActionsController.delete(@PathVariable("idAuditActions") Integer idAuditActions, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AuditActions auditActions = AuditActions.findAuditActions(idAuditActions);
        auditActions.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/auditactionses";
    }
    
    void AuditActionsController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("auditActions_fechahora_date_format", DateTimeFormat.patternForStyle("MM", LocaleContextHolder.getLocale()));
    }
    
    void AuditActionsController.populateEditForm(Model uiModel, AuditActions auditActions) {
        uiModel.addAttribute("auditActions", auditActions);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String AuditActionsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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