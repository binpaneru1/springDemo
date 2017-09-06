/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.daoImpl.ICourseDao;
import com.itn.model.Course;
import com.itn.serviceImpl.ICourseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author lunatic
 */
@Service
@Transactional
public class CourseService implements ICourseService{
@Autowired
private ICourseDao courseDao;
    @Override
    public void insert(Course course) {
        courseDao.insert(course);
 }

    @Override
    public List<Course> select() {
  List<Course> al=courseDao.select();
   return al;
    }

    @Override
    public List<Course> edit(int cid) {
        List<Course> al=courseDao.edit(cid);
        return al;
    }

    @Override
    public List<Course> update(Course course) {
courseDao.update(course);
List<Course> al=courseDao.select();
return al;
    }

    @Override
    public List<Course> delete(int cid) {
    courseDao.delete(cid);
    List<Course> al=courseDao.select();
    return al;
    }
    
}
