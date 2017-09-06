/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author lunatic
 */
@Entity
@Table(name = "student_course")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "StudentCourse.findAll", query = "SELECT s FROM StudentCourse s")
    , @NamedQuery(name = "StudentCourse.findByScid", query = "SELECT s FROM StudentCourse s WHERE s.scid = :scid")
    , @NamedQuery(name = "StudentCourse.findBySid", query = "SELECT s FROM StudentCourse s WHERE s.sid = :sid")
    , @NamedQuery(name = "StudentCourse.findByCid", query = "SELECT s FROM StudentCourse s WHERE s.cid = :cid")})
public class StudentCourse implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "scid")
    private Integer scid;
    @Column(name = "sid")
    private Integer sid;
    @Column(name = "cid")
    private Integer cid;

    public StudentCourse() {
    }

    public StudentCourse(Integer scid) {
        this.scid = scid;
    }

    public Integer getScid() {
        return scid;
    }

    public void setScid(Integer scid) {
        this.scid = scid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (scid != null ? scid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof StudentCourse)) {
            return false;
        }
        StudentCourse other = (StudentCourse) object;
        if ((this.scid == null && other.scid != null) || (this.scid != null && !this.scid.equals(other.scid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.itn.model.StudentCourse[ scid=" + scid + " ]";
    }
    
}
