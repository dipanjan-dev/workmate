package com.crm.site.Services;

import java.util.List;
import com.crm.site.Model.Token;

public interface TokenServices {
    Token createtoken(Token token);
    List<Token> getTokens(String user_Id);
    List<Token> SearchToken(String SearchData);
    List<Token> getAllTokens();
    Token getTokenByTokenNumber(String Token_Number);
    void deleteToken(String Token_Number);
    void updateTokenStatus(String Token_Number,String Status);
}
