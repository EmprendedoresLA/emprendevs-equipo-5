// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.alliance.sam;

import com.alliance.sam.Role;
import com.alliance.sam.User;
import com.alliance.sam.UserRole;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect UserRole_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "roleEntry", referencedColumnName = "id", nullable = false)
    private Role UserRole.roleEntry;
    
    @ManyToOne
    @JoinColumn(name = "userEntry", referencedColumnName = "id", nullable = false)
    private User UserRole.userEntry;
    
    public Role UserRole.getRoleEntry() {
        return roleEntry;
    }
    
    public void UserRole.setRoleEntry(Role roleEntry) {
        this.roleEntry = roleEntry;
    }
    
    public User UserRole.getUserEntry() {
        return userEntry;
    }
    
    public void UserRole.setUserEntry(User userEntry) {
        this.userEntry = userEntry;
    }
    
}
