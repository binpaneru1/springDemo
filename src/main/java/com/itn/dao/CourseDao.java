/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.daoImpl.ICourseDao;
import com.itn.model.Course;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author lunatic
 */
@Repository
public class CourseDao implements ICourseDao
{
 @Autowired  
private SessionFactory sessionfactory;

 
 
    @Override
    public void insert(Course cm) {
    sessionfactory.openSession().save(cm);
   }

    @Override
    public List<Course> select() {
  List<Course> al=sessionfactory.openSession().createCriteria(Course.class).list();
   return al;
    }

    @Override
    public void update(Course cm) {
    Session s=sessionfactory.openSession();
    s.beginTransaction();
    s.update(cm);
    s.getTransaction().commit();
    s.close();
    }

    @Override
    public void delete(int cid) {
    Session s=sessionfactory.openSession();
    s.beginTransaction();
    Course cm=(Course)s.get(Course.class, cid);
    s.delete(cm);
    s.getTransaction().commit();
    s.close();
    }

    @Override
    public List<Course> edit(int cid) {
    List<Course> al=sessionfactory.openSession().createCriteria(Course.class).add(Restrictions.eq("cid", cid)).list();
    return al;
    }
    
}
