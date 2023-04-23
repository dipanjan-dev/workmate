package com.crm.site.Services;
import java.util.List;
import java.util.Optional;
import com.crm.site.Model.Users;
public interface UserServices {
    Users creatUsers(Users user);
    List<Users> getUsers();
    void deleteuserbyid(long id);
    Optional<Users> updatebyId(long id);
    Users updateusers(Users user);
    List<Users> findUser(String UserId);
    Users getUserByEmail(String Email);
    Users getUserBySomepara(String Email);
}
