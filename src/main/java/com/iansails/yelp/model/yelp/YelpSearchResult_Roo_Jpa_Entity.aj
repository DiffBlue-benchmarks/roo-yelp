// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.model.yelp;

import com.iansails.yelp.model.yelp.YelpSearchResult;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect YelpSearchResult_Roo_Jpa_Entity {
    
    declare @type: YelpSearchResult: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long YelpSearchResult.id;
    
    @Version
    @Column(name = "version")
    private Integer YelpSearchResult.version;
    
    public Long YelpSearchResult.getId() {
        return this.id;
    }
    
    public void YelpSearchResult.setId(Long id) {
        this.id = id;
    }
    
    public Integer YelpSearchResult.getVersion() {
        return this.version;
    }
    
    public void YelpSearchResult.setVersion(Integer version) {
        this.version = version;
    }
    
}
