/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

//import org.springframework.stereotype.Controller;

import com.itn.model.Course;
import com.itn.serviceImpl.ICourseService;
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
public class CourseController {
    @Autowired
    private ICourseService courseService;
    @RequestMapping(value = "addCourse")
    public String addcourse(){
        return "add_course";
    }
    @RequestMapping(value="saveCourse",method = RequestMethod.POST)
    public String saveCourse(@ModelAttribute("course")Course course){
        courseService.insert(course);
        return "add_course";
    }
    @RequestMapping(value = "displayCourse",method = RequestMethod.GET)
    public ModelAndView displaycourse(){
        List<Course> al=courseService.select();
        ModelAndView  mv=new ModelAndView("displaycourse");
        mv.addObject("course", al);
        return mv;
    }
    @RequestMapping(value="updateCourse",method = RequestMethod.POST)
    public ModelAndView updatecourse(@ModelAttribute("course")Course course){
        courseService.update(course);
        List<Course> al=courseService.select();
        ModelAndView mv=new ModelAndView("displaycourse");
        mv.addObject("course",al);
        return mv;
    }
    @RequestMapping(value="editCourse/{cid}",method = RequestMethod.GET)
    public ModelAndView editcourse(@PathVariable("cid")int cid){
        List<Course> al=courseService.edit(cid);
        ModelAndView mv=new ModelAndView("editcourse");
        mv.addObject("editdata", al);
        return mv;
    }
    @RequestMapping(value="addstudentcourse/{sid}",method = RequestMethod.GET)
    public ModelAndView addstudentcourse(@PathVariable("sid")int sid){
        List<Course> al=courseService.select();
        ModelAndView mv=new ModelAndView("student_course");
        mv.addObject("course",al);
        mv.addObject(sid);
        return mv;
    }
}
