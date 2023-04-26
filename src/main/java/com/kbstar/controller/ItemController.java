package com.kbstar.controller;

import com.kbstar.dto.Item;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/item")
public class ItemController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "item/";
    //127.0.0.1/item
    @RequestMapping("")
    public String item(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model) {
        List<Item> list = new ArrayList<>();
        list.add(new Item(100, "butora", 1000, "a.jpg", new Date()));
        list.add(new Item(101, "tape", 2000, "b.jpg", new Date()));
        list.add(new Item(102, "chalk", 3000, "c.jpg", new Date()));
        list.add(new Item(103, "chalkbag", 4000, "d.jpg", new Date()));
        list.add(new Item(104, "bag", 5000, "e.jpg", new Date()));
        list.add(new Item(105, "pizza", 1000, "f.jpg", new Date()));
        list.add(new Item(106, "tteokbokki", 2000, "g.jpg", new Date()));
        list.add(new Item(107, "chicken", 3000, "h.jpg", new Date()));
        list.add(new Item(108, "udon", 4000, "i.jpg", new Date()));
        list.add(new Item(109, "kimbap", 5000, "j.jpg", new Date()));
        list.add(new Item(110, "coffee", 1000, "k.jpg", new Date()));
        list.add(new Item(111, "gloves", 2000, "l.jpg", new Date()));
        list.add(new Item(112, "chocolate", 3000, "m.jpg", new Date()));
        list.add(new Item(113, "candy", 4000, "n.jpg", new Date()));
        list.add(new Item(114, "hoodies", 5000, "o.jpg", new Date()));
        list.add(new Item(115, "shoes", 1000, "p.jpg", new Date()));
        list.add(new Item(116, "pho", 2000, "q.jpg", new Date()));
        list.add(new Item(117, "pork", 3000, "r.jpg", new Date()));
        list.add(new Item(118, "pasta", 4000, "s.jpg", new Date()));
        list.add(new Item(119, "salad", 5000, "t.jpg", new Date()));

        model.addAttribute("allitem", list);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"all");
        return "index";
    }
}