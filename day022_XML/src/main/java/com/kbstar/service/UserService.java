package com.kbstar.service;
import com.kbstar.dao.UserDAO;
import com.kbstar.dao.UserMySQLDAO;
import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("uservice")
public class UserService implements MyService<String, UserDTO> {
//    @Autowired
//    @Qualifier("udao")
    //   MyDao<String, UserDTO> dao;

    @Autowired
    UserDAO dao;

    public UserService(UserMySQLDAO dao) {
    }

    @Override
    public void register(UserDTO userDTO) {
        dao.insert(userDTO);
        System.out.println("Send Mail");
        Date date = new Date();
        System.out.println();
    }

    @Override
    public void remove(String s) {
        dao.delete(s);
        System.out.println("Delete Mail..");
    }

    @Override
    public UserDTO get(String s) {
        return null;
    }

    @Override
    public List<UserDTO> get() {
        return null;
    }

    @Override
    public void modify(UserDTO userDTO) {
        dao.update(userDTO);
        System.out.println("Send Mail..");
    }

    @Override
    public UserDTO select(String s) {
        return dao.select(s);
    }

    @Override
    public List<UserDTO> select() {
        return dao.select();
    }
}
