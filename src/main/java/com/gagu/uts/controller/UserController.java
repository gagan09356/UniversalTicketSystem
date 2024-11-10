package com.gagu.uts.controller;

import com.gagu.uts.entity.Ticket;
import com.gagu.uts.entity.User;
import com.gagu.uts.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/user/{email}")
    public ResponseEntity<List<Ticket>> getUserByEmail(@PathVariable String email) {
        System.out.println(email);
        Optional<User> user = userService.findByEmail(email);
        if (user.isPresent()) {
            return ResponseEntity.ok(user.get().getTickets());
        }
        else{
            return ResponseEntity.notFound().build();
        }
    }
}
