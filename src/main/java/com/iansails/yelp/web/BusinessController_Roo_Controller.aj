// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.web;

import com.iansails.yelp.model.yelp.Business;
import com.iansails.yelp.service.BusinessService;
import com.iansails.yelp.service.LocationService;
import com.iansails.yelp.web.BusinessController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect BusinessController_Roo_Controller {
    
    @Autowired
    BusinessService BusinessController.businessService;
    
    @Autowired
    LocationService BusinessController.locationService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String BusinessController.create(@Valid Business business, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, business);
            return "businesses/create";
        }
        uiModel.asMap().clear();
        businessService.saveBusiness(business);
        return "redirect:/businesses/" + encodeUrlPathSegment(business.getId_().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String BusinessController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Business());
        return "businesses/create";
    }
    
    @RequestMapping(value = "/{id_}", produces = "text/html")
    public String BusinessController.show(@PathVariable("id_") Long id_, Model uiModel) {
        uiModel.addAttribute("business", businessService.findBusiness(id_));
        uiModel.addAttribute("itemId", id_);
        return "businesses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String BusinessController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("businesses", businessService.findBusinessEntries(firstResult, sizeNo));
            float nrOfPages = (float) businessService.countAllBusinesses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("businesses", businessService.findAllBusinesses());
        }
        return "businesses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String BusinessController.update(@Valid Business business, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, business);
            return "businesses/update";
        }
        uiModel.asMap().clear();
        businessService.updateBusiness(business);
        return "redirect:/businesses/" + encodeUrlPathSegment(business.getId_().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id_}", params = "form", produces = "text/html")
    public String BusinessController.updateForm(@PathVariable("id_") Long id_, Model uiModel) {
        populateEditForm(uiModel, businessService.findBusiness(id_));
        return "businesses/update";
    }
    
    @RequestMapping(value = "/{id_}", method = RequestMethod.DELETE, produces = "text/html")
    public String BusinessController.delete(@PathVariable("id_") Long id_, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Business business = businessService.findBusiness(id_);
        businessService.deleteBusiness(business);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/businesses";
    }
    
    void BusinessController.populateEditForm(Model uiModel, Business business) {
        uiModel.addAttribute("business", business);
        uiModel.addAttribute("locations", locationService.findAllLocations());
    }
    
    String BusinessController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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