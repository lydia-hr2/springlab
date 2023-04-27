package com.kbstar.marker;

import com.kbstar.dto.Item;
import com.kbstar.service.ItemService;
import com.kbstar.service.MarkerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.util.Date;

@Slf4j
@SpringBootTest

class DeleteTest {

    @Autowired
    MarkerService service;

    @Test
    void contextLoads() {
        try{
            service.remove(107);
            log.info("success");
            service.get();
        }catch(Exception e){
            log.info("Error");
            e.printStackTrace();
        }
    }

}