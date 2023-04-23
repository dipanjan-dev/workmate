package com.crm.site.Services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.crm.site.Model.Users;
import com.crm.site.Repository.UserRepository;
import com.crm.site.Services.UserServices;

@Service
public class UserServicesIMPL implements UserServices{
    private UserRepository UserRepository;
   
    public UserServicesIMPL(UserRepository UserRepository){
        super();
        this.UserRepository = UserRepository;
    }

    @Override
    public Users creatUsers(Users user) {
      return UserRepository.save(user);
    }

    @Override
    public List<Users> getUsers() {
        return UserRepository.findAll();
    }

    @Override
    public void deleteuserbyid(long id) {
        UserRepository.deleteById(id);
    }

    @Override
    public Optional<Users> updatebyId(long id) {
        Optional<Users> userInfo = UserRepository.findById(id);
        if(userInfo.isPresent()){
            return userInfo;
        }
        return null;
    }

    @Override
    public Users updateusers(Users user) {
        return UserRepository.save(user);
    }

    @Override
    public List<Users> findUser(String UserId) {
        List<Users> users = UserRepository.findByUserId(UserId);
        return users;
    }

    @Override
    public Users getUserByEmail(String Email) {
        Users users = UserRepository.findByUserEmail(Email);
        return users;
    }

    @Override
    public Users getUserBySomepara(String Email) {
       return null;
    }

  
    
}
