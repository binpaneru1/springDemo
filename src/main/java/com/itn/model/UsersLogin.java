/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author lunatic
 */
@Entity
@Table(name = "users_login")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsersLogin.findAll", query = "SELECT u FROM UsersLogin u")
    , @NamedQuery(name = "UsersLogin.findByUid", query = "SELECT u FROM UsersLogin u WHERE u.uid = :uid")
    , @NamedQuery(name = "UsersLogin.findByUsername", query = "SELECT u FROM UsersLogin u WHERE u.username = :username")
    , @NamedQuery(name = "UsersLogin.findByPassword", query = "SELECT u FROM UsersLogin u WHERE u.password = :password")
    , @NamedQuery(name = "UsersLogin.findByActive", query = "SELECT u FROM UsersLogin u WHERE u.active = :active")})
public class UsersLogin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "uid")
    private Integer uid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Column(name = "active")
    private boolean active;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private Collection<UsersRoles> usersRolesCollection;

    public UsersLogin() {
    }

    public UsersLogin(Integer uid) {
        this.uid = uid;
    }

    public UsersLogin(Integer uid, String username, String password, boolean active) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.active = active;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @XmlTransient
    public Collection<UsersRoles> getUsersRolesCollection() {
        return usersRolesCollection;
    }

    public void setUsersRolesCollection(Collection<UsersRoles> usersRolesCollection) {
        this.usersRolesCollection = usersRolesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (uid != null ? uid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsersLogin)) {
            return false;
        }
        UsersLogin other = (UsersLogin) object;
        if ((this.uid == null && other.uid != null) || (this.uid != null && !this.uid.equals(other.uid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.itn.model.UsersLogin[ uid=" + uid + " ]";
    }
    
}
