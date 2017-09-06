/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.daoImpl.IStudentDao;
import com.itn.model.Student;
import com.itn.model.StudentCourse;
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
public class StudentDao implements IStudentDao{
    @Autowired
private SessionFactory sessionFactory;
    @Override
    public void insert(Student student) {
        sessionFactory.openSession().save(student);
   }

    @Override
    public List<Student> select() {
        List<Student> al=sessionFactory.openSession().createCriteria(Student.class).list();
        
        return al;
   }

    @Override
    public List<Student> edit(int sid) {
       List<Student> al=sessionFactory.openSession().createCriteria(Student.class).add(Restrictions.eq("sid", sid)).list();
       return al;
    }

    @Override
    public void update(Student student) {
   Session s=sessionFactory.openSession();
   s.beginTransaction();
   s.update(student);
   s.getTransaction().commit();
   s.close();
    }

    @Override
    public void delete(int sid) {
    Session s=sessionFactory.openSession();
    s.beginTransaction();
    Student student=(Student)s.get(Student.class,sid);
    s.delete(student);
    s.getTransaction().commit();
    s.close();
    }

    @Override
    public void addcourse(StudentCourse studentcourse) {
    sessionFactory.openSession().save(studentcourse);
    }
    
}
