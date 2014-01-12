// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iansails.yelp.model.yelp;

import com.iansails.yelp.model.yelp.YelpSearchResult;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YelpSearchResult_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager YelpSearchResult.entityManager;
    
    public static final EntityManager YelpSearchResult.entityManager() {
        EntityManager em = new YelpSearchResult().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long YelpSearchResult.countYelpSearchResults() {
        return entityManager().createQuery("SELECT COUNT(o) FROM YelpSearchResult o", Long.class).getSingleResult();
    }
    
    public static List<YelpSearchResult> YelpSearchResult.findAllYelpSearchResults() {
        return entityManager().createQuery("SELECT o FROM YelpSearchResult o", YelpSearchResult.class).getResultList();
    }
    
    public static YelpSearchResult YelpSearchResult.findYelpSearchResult(Long id) {
        if (id == null) return null;
        return entityManager().find(YelpSearchResult.class, id);
    }
    
    public static List<YelpSearchResult> YelpSearchResult.findYelpSearchResultEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM YelpSearchResult o", YelpSearchResult.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void YelpSearchResult.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void YelpSearchResult.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            YelpSearchResult attached = YelpSearchResult.findYelpSearchResult(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void YelpSearchResult.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void YelpSearchResult.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public YelpSearchResult YelpSearchResult.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        YelpSearchResult merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}