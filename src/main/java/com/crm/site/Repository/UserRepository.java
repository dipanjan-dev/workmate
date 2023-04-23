package com.crm.site.Repository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.crm.site.Model.Users;
@Repository
public interface UserRepository extends JpaRepository<Users,Long> {
    @Query("from Users where user_id LIKE %?1% or name LIKE %?1%")
    public List<Users> findByUserId(String userId);   

    @Query("from Users where email=?1")
    public Users findByUserEmail(String Email);
}
