// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.service;

import com.iansails.yelp.model.Text;
import com.iansails.yelp.service.TextServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TextServiceImpl_Roo_Service {
    
    declare @type: TextServiceImpl: @Service;
    
    declare @type: TextServiceImpl: @Transactional;
    
    public long TextServiceImpl.countAllTexts() {
        return Text.countTexts();
    }
    
    public void TextServiceImpl.deleteText(Text text) {
        text.remove();
    }
    
    public Text TextServiceImpl.findText(Long id) {
        return Text.findText(id);
    }
    
    public List<Text> TextServiceImpl.findAllTexts() {
        return Text.findAllTexts();
    }
    
    public List<Text> TextServiceImpl.findTextEntries(int firstResult, int maxResults) {
        return Text.findTextEntries(firstResult, maxResults);
    }
    
    public void TextServiceImpl.saveText(Text text) {
        text.persist();
    }
    
    public Text TextServiceImpl.updateText(Text text) {
        return text.merge();
    }
    
}
