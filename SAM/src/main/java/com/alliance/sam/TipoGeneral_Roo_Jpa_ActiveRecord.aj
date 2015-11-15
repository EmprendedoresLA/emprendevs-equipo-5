// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TipoGeneral;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TipoGeneral_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TipoGeneral.entityManager;
    
    public static final List<String> TipoGeneral.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager TipoGeneral.entityManager() {
        EntityManager em = new TipoGeneral().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TipoGeneral.countTipoGenerals() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TipoGeneral o", Long.class).getSingleResult();
    }
    
    public static List<TipoGeneral> TipoGeneral.findAllTipoGenerals() {
        return entityManager().createQuery("SELECT o FROM TipoGeneral o", TipoGeneral.class).getResultList();
    }
    
    public static List<TipoGeneral> TipoGeneral.findAllTipoGenerals(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoGeneral o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoGeneral.class).getResultList();
    }
    
    public static TipoGeneral TipoGeneral.findTipoGeneral(Long idTipoGeneral) {
        if (idTipoGeneral == null) return null;
        return entityManager().find(TipoGeneral.class, idTipoGeneral);
    }
    
    public static List<TipoGeneral> TipoGeneral.findTipoGeneralEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TipoGeneral o", TipoGeneral.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TipoGeneral> TipoGeneral.findTipoGeneralEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoGeneral o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoGeneral.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TipoGeneral.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TipoGeneral.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TipoGeneral attached = TipoGeneral.findTipoGeneral(this.idTipoGeneral);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TipoGeneral.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TipoGeneral.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TipoGeneral TipoGeneral.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TipoGeneral merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}