// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CalculoDetalle;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CalculoDetalle_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CalculoDetalle.entityManager;
    
    public static final List<String> CalculoDetalle.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager CalculoDetalle.entityManager() {
        EntityManager em = new CalculoDetalle().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CalculoDetalle.countCalculoDetalles() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CalculoDetalle o", Long.class).getSingleResult();
    }
    
    public static List<CalculoDetalle> CalculoDetalle.findAllCalculoDetalles() {
        return entityManager().createQuery("SELECT o FROM CalculoDetalle o", CalculoDetalle.class).getResultList();
    }
    
    public static List<CalculoDetalle> CalculoDetalle.findAllCalculoDetalles(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CalculoDetalle o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CalculoDetalle.class).getResultList();
    }
    
    public static CalculoDetalle CalculoDetalle.findCalculoDetalle(Long idCalculoDetalle) {
        if (idCalculoDetalle == null) return null;
        return entityManager().find(CalculoDetalle.class, idCalculoDetalle);
    }
    
    public static List<CalculoDetalle> CalculoDetalle.findCalculoDetalleEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CalculoDetalle o", CalculoDetalle.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CalculoDetalle> CalculoDetalle.findCalculoDetalleEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CalculoDetalle o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CalculoDetalle.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CalculoDetalle.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CalculoDetalle.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CalculoDetalle attached = CalculoDetalle.findCalculoDetalle(this.idCalculoDetalle);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CalculoDetalle.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CalculoDetalle.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CalculoDetalle CalculoDetalle.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CalculoDetalle merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}