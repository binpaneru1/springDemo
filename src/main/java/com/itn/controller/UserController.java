/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author lunatic
 */
@Controller
public class UserController {
    @RequestMapping(value = "/login/",method = RequestMethod.GET)
    public String login(){
        
        return "login";
    }
    @RequestMapping(value={"/fail2login","/fail2login/"},method = RequestMethod.GET)
    public String faillogin(){
        return "login";
    }
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(){
        SecurityContextHolder.getContext().setAuthentication(null);
        return "login";
    }
}
