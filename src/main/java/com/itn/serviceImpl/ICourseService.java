/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.serviceImpl;

import com.itn.model.Course;
import java.util.List;

/**
 *
 * @author lunatic
 */
public interface ICourseService {

    public void insert(Course course);
    public List<Course> select();
    public List<Course> edit(int cid);
    public List<Course> update(Course course);
    public List<Course> delete(int cid);
    
    
}
