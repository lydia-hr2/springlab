package com.kbstar.dao;

import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository
public class UserDAO implements MyDao<String, UserDTO> {
    @Override
    public void insert(UserDTO userDTO) {
        System.out.println("Inserted Oracle:"+ userDTO);
    }

    @Override
    public void delete(String s) {
        System.out.println("Deleted Oracle:"+ s);
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
    public void update(UserDTO userDTO) {
        System.out.println("Updated Oracle:"+ userDTO);
    }


    @Override
    public UserDTO select(String s) {
        UserDTO user = null;
        String pwd;
        String name;
        user = new UserDTO(s, pwd= "pwd01", name= "이말숙");
        return user;
    }

    @Override
    public List<UserDTO> select() {
        List<UserDTO> list = new ArrayList<>();
        String id;
        String name;
        String pwd;
        list.add(new UserDTO(id="id01", pwd="pwd01", name="이말숙"));
        list.add(new UserDTO(id="id02", pwd="pwd02", name="이말숙"));
        list.add(new UserDTO(id="id03", pwd="pwd03", name="이말숙"));
        return list;
    }
}
