// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.CoeficienteXZona;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CoeficienteXZona_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CoeficienteXZona.entityManager;
    
    public static final List<String> CoeficienteXZona.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager CoeficienteXZona.entityManager() {
        EntityManager em = new CoeficienteXZona().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CoeficienteXZona.countCoeficienteXZonas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CoeficienteXZona o", Long.class).getSingleResult();
    }
    
    public static List<CoeficienteXZona> CoeficienteXZona.findAllCoeficienteXZonas() {
        return entityManager().createQuery("SELECT o FROM CoeficienteXZona o", CoeficienteXZona.class).getResultList();
    }
    
    public static List<CoeficienteXZona> CoeficienteXZona.findAllCoeficienteXZonas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CoeficienteXZona o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CoeficienteXZona.class).getResultList();
    }
    
    public static CoeficienteXZona CoeficienteXZona.findCoeficienteXZona(Integer idCoeficienteXZona) {
        if (idCoeficienteXZona == null) return null;
        return entityManager().find(CoeficienteXZona.class, idCoeficienteXZona);
    }
    
    public static List<CoeficienteXZona> CoeficienteXZona.findCoeficienteXZonaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CoeficienteXZona o", CoeficienteXZona.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CoeficienteXZona> CoeficienteXZona.findCoeficienteXZonaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CoeficienteXZona o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CoeficienteXZona.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CoeficienteXZona.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CoeficienteXZona.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CoeficienteXZona attached = CoeficienteXZona.findCoeficienteXZona(this.idCoeficienteXZona);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CoeficienteXZona.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CoeficienteXZona.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CoeficienteXZona CoeficienteXZona.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CoeficienteXZona merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}