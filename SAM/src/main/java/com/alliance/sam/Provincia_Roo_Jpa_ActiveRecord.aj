// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Provincia;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Provincia_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Provincia.entityManager;
    
    public static final List<String> Provincia.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Provincia.entityManager() {
        EntityManager em = new Provincia().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Provincia.countProvincias() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Provincia o", Long.class).getSingleResult();
    }
    
    public static List<Provincia> Provincia.findAllProvincias() {
        return entityManager().createQuery("SELECT o FROM Provincia o", Provincia.class).getResultList();
    }
    
    public static List<Provincia> Provincia.findAllProvincias(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Provincia o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Provincia.class).getResultList();
    }
    
    public static Provincia Provincia.findProvincia(Long idProvincia) {
        if (idProvincia == null) return null;
        return entityManager().find(Provincia.class, idProvincia);
    }
    
    public static List<Provincia> Provincia.findProvinciaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Provincia o", Provincia.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Provincia> Provincia.findProvinciaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Provincia o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Provincia.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Provincia.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Provincia.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Provincia attached = Provincia.findProvincia(this.idProvincia);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Provincia.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Provincia.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Provincia Provincia.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Provincia merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
