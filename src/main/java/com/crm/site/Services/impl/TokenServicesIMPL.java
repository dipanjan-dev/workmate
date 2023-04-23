package com.crm.site.Services.impl;

import java.util.List;
import org.springframework.stereotype.Service;

import com.crm.site.Model.Token;
import com.crm.site.Repository.TokenRepository;
import com.crm.site.Services.TokenServices;

@Service
public class TokenServicesIMPL implements TokenServices  {
    private TokenRepository tokenRepository;
    public TokenServicesIMPL(TokenRepository tokenRepository){
        super();
        this.tokenRepository = tokenRepository;
    }


    @Override
    public Token createtoken(Token token) {  
      return tokenRepository.save(token);
    }


    @Override
    public List<Token> getTokens(String user_Id) {
      List<Token> tokeninfo = tokenRepository.getTokenByuser(user_Id);
      if(tokeninfo.isEmpty()){
        return null;
      }
      else{
        return tokeninfo;
      }
    }


    @Override
    public List<Token> getAllTokens() {
      return tokenRepository.findAll();
    }


    @Override
    public Token getTokenByTokenNumber(String Token_Number) {
        return tokenRepository.getTokenByTokenNumber(Token_Number);
    }


 
}
