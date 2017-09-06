/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.daoImpl;

import com.itn.model.Student;
import com.itn.model.StudentCourse;
import java.util.List;

/**
 *
 * @author lunatic
 */
public interface IStudentDao {
  public void insert(Student student);
  public List<Student> select();  
  public List<Student> edit(int sid);
  public void update(Student student);
  public void delete(int sid);
  public void addcourse(StudentCourse studentcourse);
}
