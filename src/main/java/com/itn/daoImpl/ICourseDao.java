/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.daoImpl;

import com.itn.model.Course;
import java.util.List;

/**
 *
 * @author lunatic
 */
public interface ICourseDao {
    public void insert(Course cm);
     public List<Course> select();
  public void update(Course cm);
  public void delete(int cid);
  public List<Course> edit(int cid);
}
