package com.abc.Abc;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.abc.Abc.dao.Userdao;
import com.abc.Abc.dto.Users;
import com.abc.Abc.service.UserService;

@SpringBootTest
class AbcApplicationTests {
	@Autowired 
	Userdao userrepo;
	@Autowired 
	UserService userService;
	@Test
    void addUserDetails() {
        Users user= new Users();
        user.setUserid(8);
        user.setEmail("JaneH@gmail.com");
        user.setFirst_name("Jane");
        user.setLast_name("Hopper");
        user.setPassword("mike");
        user.setPhone("6487612879");
        user.setUserName("el");
        user.setRole("USER");
        userService.AddUserDetails(user);
        System.out.println(user);
}
}
