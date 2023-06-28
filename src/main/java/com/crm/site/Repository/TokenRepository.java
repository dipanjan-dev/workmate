package com.crm.site.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.crm.site.Model.Token;

public interface TokenRepository extends JpaRepository<Token,Long>{

    @Query("from Token where user_id=?1 ORDER BY created_at DESC")
    List<Token> getTokenByuser(String user_Id);

    @Query("from Token where token_number=?1")
    Token getTokenByTokenNumber(String token_Number);

    @Modifying
    @Transactional
    @Query("delete from Token where token_number=?1")
    void deleteToken(String token_Number);

    @Modifying
    @Transactional
    @Query("Update Token SET status=?2 where token_number=?1")
    void updateTokenStatus(String token_Number,String Status);


    @Query("from Token where user_id=?1 OR token_number=?1 OR token_id=?1")
    // @Query("from Token where user_id=?1 OR token_number=?1 OR token_id=?1 OR name LIKE %?1%")
    List<Token> SearchToken(String SearchData);
    
}
