package com.gagu.uts.service;

import com.gagu.uts.entity.User;
import com.gagu.uts.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    UserRepo userRepo;

    public Optional<User> findByEmail(String email) {
        Optional<User> user= userRepo.findByEmail(email);
        return user;
    }

}
