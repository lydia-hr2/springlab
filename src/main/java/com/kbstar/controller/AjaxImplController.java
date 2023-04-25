package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Marker;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@RestController
public class AjaxImplController {
    @RequestMapping("/getservertime")
    public Object getservertime(){
        Date date = new Date();
        return date;
    }
    @RequestMapping("/getdata")
    public Object getdata(){
        List<Cust> list=new ArrayList<>();
        list.add(new Cust("id06", "pwd01", "lydia"));
        list.add(new Cust("id07", "pwd02", "aleydis"));
        list.add(new Cust("id08", "pwd03", "paul"));
        list.add(new Cust("id09", "pwd04", "gabriel"));
        list.add(new Cust("id10", "pwd05", "elizabeth"));

        //Java Object --> JSON
        JSONArray ja = new JSONArray();

        for(Cust obj:list){
            JSONObject jo = new JSONObject();
            Random r = new Random();
            int i = r.nextInt(100)+1;
            jo.put("id", obj.getId());
            jo.put("pwd", obj.getPwd());
            jo.put("name", obj.getName()+i);
            ja.add(jo);
        }
        return ja;
    }
    @RequestMapping("/checkid")
    public Object checkid(String id){
        int result = 0;
    if(id.equals("qqqq") || id.equals("aaaa") || id.equals("ssss")) {
        result = 1;
    }
        return result;
    }
    @RequestMapping("/chart05")
    public Object chart05(String year){
        JSONArray ja = new JSONArray();
        for(int i=1; i<=12; i++){
            Random r = new Random();
            int num = r.nextInt(100)+1;
            ja.add(num);
        }
        return ja;
    }
    @RequestMapping("/markers")
    public Object markers(String loc){
        List<Marker> list = new ArrayList<>();
        if(loc.equals("s")){
            list.add(new Marker(100,"국밥","http://www.naver.com",33.450701, 126.570667, "a.jpg", "s"));
            list.add(new Marker(100,"덮밥","http://www.nate.com",33.450605, 126.570563, "b.jpg", "s"));
            list.add(new Marker(100,"고기","http://www.daum.net",33.450307, 126.570861, "c.jpg", "s"));
        }else if(loc.equals("b")){
            list.add(new Marker(100,"샐러드","http://www.naver.com",35.1928469, 129.1536182, "a.jpg", "b"));
            list.add(new Marker(100,"닭가슴살","http://www.nate.com",35.1929469, 129.1536192, "b.jpg", "b"));
            list.add(new Marker(100,"그릭요거트","http://www.daum.net",35.128869, 129.1536282, "c.jpg", "b"));

        }else if(loc.equals("j")){

            list.add(new Marker(100,"국밥","http://www.naver.com",33.2451736, 126.5541947, "a.jpg", "j"));
            list.add(new Marker(100,"덮밥","http://www.nate.com",33.2451786, 126.5541747, "b.jpg", "j"));
            list.add(new Marker(100,"고기","http://www.daum.net",33.2451756, 126.5541847, "c.jpg", "j"));

        }
        JSONArray ja = new JSONArray();
        for(Marker obj:list){
            JSONObject jo = new JSONObject();
            jo.put("id", obj.getId());
            jo.put("title", obj.getTitle());
            jo.put("target", obj.getTarget());
            jo.put("lat", obj.getLat());
            jo.put("lng", obj.getLng());
            jo.put("img", obj.getImg());
            jo.put("loc", obj.getLoc());
            ja.add(jo);
        }
        return ja;
    }
}
