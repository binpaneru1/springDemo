/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.daoImpl.IStudentDao;
import com.itn.model.Student;
import com.itn.model.StudentCourse;
import com.itn.serviceImpl.IStudentService;
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
public class StudentService implements IStudentService {

    @Autowired
    private IStudentDao studentDao;

    @Override
    public void insert(Student student) {
        studentDao.insert(student);
    }

    @Override
    public List<Student> select() {
        List<Student> al = studentDao.select();
        return al;
    }

    @Override
    public List<Student> edit(int sid) {
        List<Student> al = studentDao.edit(sid);
        return al;
    }

    @Override
    public List<Student> update(Student student) {
        studentDao.update(student);
        List<Student> al = studentDao.select();
        return al;
    }

    @Override
    public List<Student> delete(int sid) {
        studentDao.delete(sid);
        List<Student> al=studentDao.select();
        return al;
    }

    @Override
    public void addcourse(StudentCourse studentcourse) {
    studentDao.addcourse(studentcourse);
    }

}
