// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.TipoDocumentoExpediente;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TipoDocumentoExpediente_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TipoDocumentoExpediente.entityManager;
    
    public static final List<String> TipoDocumentoExpediente.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager TipoDocumentoExpediente.entityManager() {
        EntityManager em = new TipoDocumentoExpediente().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TipoDocumentoExpediente.countTipoDocumentoExpedientes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TipoDocumentoExpediente o", Long.class).getSingleResult();
    }
    
    public static List<TipoDocumentoExpediente> TipoDocumentoExpediente.findAllTipoDocumentoExpedientes() {
        return entityManager().createQuery("SELECT o FROM TipoDocumentoExpediente o", TipoDocumentoExpediente.class).getResultList();
    }
    
    public static List<TipoDocumentoExpediente> TipoDocumentoExpediente.findAllTipoDocumentoExpedientes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoDocumentoExpediente o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoDocumentoExpediente.class).getResultList();
    }
    
    public static TipoDocumentoExpediente TipoDocumentoExpediente.findTipoDocumentoExpediente(Long idTipoDocumentoExpediente) {
        if (idTipoDocumentoExpediente == null) return null;
        return entityManager().find(TipoDocumentoExpediente.class, idTipoDocumentoExpediente);
    }
    
    public static List<TipoDocumentoExpediente> TipoDocumentoExpediente.findTipoDocumentoExpedienteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TipoDocumentoExpediente o", TipoDocumentoExpediente.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TipoDocumentoExpediente> TipoDocumentoExpediente.findTipoDocumentoExpedienteEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoDocumentoExpediente o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoDocumentoExpediente.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TipoDocumentoExpediente.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TipoDocumentoExpediente.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TipoDocumentoExpediente attached = TipoDocumentoExpediente.findTipoDocumentoExpediente(this.idTipoDocumentoExpediente);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TipoDocumentoExpediente.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TipoDocumentoExpediente.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TipoDocumentoExpediente TipoDocumentoExpediente.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TipoDocumentoExpediente merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
