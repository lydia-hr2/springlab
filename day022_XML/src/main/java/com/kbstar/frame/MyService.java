package com.kbstar.frame;
import com.kbstar.dto.UserDTO;

import java.util.List;
public interface MyService<K, V> {
    public void register(V v);
    public void remove(K k);
    public V get(K k);
    public List<V> get();

    void modify(UserDTO userDTO);

    UserDTO select(String s);

    List<UserDTO> select();
}
