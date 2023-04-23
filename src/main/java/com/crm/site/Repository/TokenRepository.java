package com.crm.site.Repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.crm.site.Model.Token;

public interface TokenRepository extends JpaRepository<Token,Long>{

    @Query("from Token where user_id=?1 ORDER BY created_at DESC")
    List<Token> getTokenByuser(String user_Id);

    @Query("from Token where token_number=?1")
    Token getTokenByTokenNumber(String token_Number);
    
}
