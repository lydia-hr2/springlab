package com.kbstar.controller;

import com.kbstar.dto.Cust;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cust")
public class CustController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "cust/";
    //127.0.0.1/cust
    @RequestMapping("")
    public String cust(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");
        return "index";
    }

    @RequestMapping("/get")
    public String add(Model model, String id) {
        Cust cust = new Cust(id, "xxx", "lydia");
        model.addAttribute("gcust", cust);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }
    @RequestMapping("/add")
    public String add(Model model) {
        List<Cust> list=new ArrayList<>();
        list.add(new Cust("id06", "pwd01", "lydia"));
        list.add(new Cust("id07", "pwd02", "aleydis"));
        list.add(new Cust("id08", "pwd03", "paul"));
        list.add(new Cust("id09", "pwd04", "gabriel"));
        list.add(new Cust("id10", "pwd05", "elizabeth"));
        model.addAttribute("dlist", list);

        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model) {
        List<Cust> list=new ArrayList<>();
        list.add(new Cust("id11", "pwd01", "lydia"));
        list.add(new Cust("id22", "pwd02", "aleydis"));
        list.add(new Cust("id23", "pwd03", "paul"));
        list.add(new Cust("id24", "pwd04", "gabriel"));
        list.add(new Cust("id25", "pwd05", "elizabeth"));
        model.addAttribute("ilist", list);

        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }
}