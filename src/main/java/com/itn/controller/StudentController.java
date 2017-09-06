/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import com.itn.model.Student;
import com.itn.model.StudentCourse;
import com.itn.serviceImpl.IStudentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author lunatic
 */
@Controller
public class StudentController {
    @Autowired
    public IStudentService studentService;
    @RequestMapping(value = "addStudent")
    public String addstudent(){
        return "student";
    }
    
    @RequestMapping(value="saveStudent",method = RequestMethod.POST)
    public String savestudent(@ModelAttribute("student")Student student){
        studentService.insert(student);
        return "student";
    }
    @RequestMapping(value="displayStudent",method=RequestMethod.GET)
    public ModelAndView displaystudent(){
        List<Student> al=studentService.select();
        ModelAndView mv=new ModelAndView("display_student");
        mv.addObject("student",al);
        return mv;
    }
    @RequestMapping(value="editStudent/{sid}",method=RequestMethod.GET)
    public ModelAndView editStudent(@PathVariable("sid")int sid){
        List<Student> al=studentService.edit(sid);
        ModelAndView mv=new ModelAndView("edit_student");
        mv.addObject("studentdata",al);
        return mv;
    }
    @RequestMapping(value = "updataStudent",method = RequestMethod.POST)
    public ModelAndView updataData(@ModelAttribute("student")Student student){
        studentService.update(student);
        List<Student> al=studentService.select();
        ModelAndView mv= new ModelAndView("display_student");
        mv.addObject("student",al);
        return mv;
    }
    @RequestMapping(value="deleteStudent/{sid}",method = RequestMethod.GET)
    public ModelAndView deletestudent(@PathVariable("sid")int sid){
        studentService.delete(sid);
         List<Student> al=studentService.select();
        ModelAndView mv= new ModelAndView("display_student");
        mv.addObject("student",al);
        return mv;
    }
    @RequestMapping(value="addcoursestudent",method = RequestMethod.POST)
        public String addstudentcourse(@ModelAttribute("studentcourse") StudentCourse studentcourse){
        studentService.addcourse(studentcourse);
        return "student";
    }
}
