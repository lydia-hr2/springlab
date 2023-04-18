package com.kbstar.service;
import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyDao;
import com.kbstar.frame.MyService;

import java.util.List;
@Service("uservice")
public class UserService implements MyService<String, UserDTO> {
    @Autowired
    MyDao<String, UserDTO> dao;
    public UserService(MyDao dao){
        this.dao = dao;
    }
    @Override
    public void register(UserDTO userDTO) {
        dao.insert(userDTO);
        System.out.println("Send Mail");
    }

    @Override
    public void remove(String s) {
        dao.delete(s);
        System.out.println("Delete Mail..");
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
