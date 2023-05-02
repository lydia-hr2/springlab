package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
@Slf4j
@Controller
public class MainController {
    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    CustService custService;
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());

    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/custinfo")
    public String custinfo(Model model, String id) throws Exception {
        Cust cust = null;
        try {
            cust = custService.get(id);
        } catch (Exception e) {
            throw new Exception("시스템 장애");
        }
        model.addAttribute("custinfo",cust);
        model.addAttribute("center","custinfo");
        return "index";
    }
    @RequestMapping("/custinfoimpl")
    public String custinfoimpl(Model model, Cust cust) throws Exception {
        try {
            cust.setPwd(encoder.encode(cust.getPwd()));
            custService.modify(cust);
        } catch (Exception e) {
            throw new Exception("시스템 장애");
        }
        return "redirect:/custinfo?id="+cust.getId();
    }


    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, String pwd, HttpSession session) throws Exception {
        Cust cust = null;
        String nextPage = "loginfail";
        try {
            cust = custService.get(id);
            if(cust != null && encoder.matches(pwd,cust.getPwd())){
                nextPage = "loginok";
                session.setMaxInactiveInterval(1000000);
                session.setAttribute("logincust",cust);
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애 잠시후 다시 로그인 하세요");
        }

        model.addAttribute("center",nextPage);
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               Cust cust, HttpSession session) throws Exception {
        try {
            cust.setPwd(encoder.encode(cust.getPwd()));
            custService.register(cust);
            session.setAttribute("logincust", cust);
        } catch (Exception e) {
            throw new Exception("가입 오류");
        }
        model.addAttribute("rcust", cust);
        model.addAttribute("center","registerok");
        return "index";
    }
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center","register");
        return "index";
    }


    // /quics?page=bs01
    @RequestMapping("/quics")
    public String quics(String page){
        return page;
    }
}
