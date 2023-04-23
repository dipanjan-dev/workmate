package com.crm.site.Controller;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crm.site.Model.Token;
import com.crm.site.Services.TokenServices;
@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @Autowired
    private JavaMailSender mailSender;
    private TokenServices tokenServices;
    public EmployeeController(TokenServices tokenServices){
        super();
        this.tokenServices = tokenServices;
    }
    @GetMapping(value = "/index")
    public String root(HttpSession session) throws NullPointerException{
        String User__ID =(String)session.getAttribute("UserId");
        List<Token> limitedTokens=null;
        List<Token> tokens = tokenServices.getTokens(User__ID);
        if(tokens!=null){
            limitedTokens = tokens.subList(0, Math.min(tokens.size(), 3));
        }
        session.setAttribute("tokenlist",limitedTokens);
        session.setAttribute("fulltokenlist",tokens);
        session.setAttribute("tokenlistSize",tokens==null?0:tokens.size());
        return "/EmployeeDashboard/Home";
    }
    
    

    @GetMapping(value = "/profile")
    public String profile(){
        return "/EmployeeDashboard/EmployeeProfile";
    }
    @GetMapping(value = "/token")
    public String token(HttpSession session){
        String User__ID =(String)session.getAttribute("UserId");
        List<Token> tokens = tokenServices.getTokens(User__ID);
        session.setAttribute("tokenlist",tokens);
        return "/EmployeeDashboard/token";
    }

    @PostMapping(value = "/token-create")
    public String tokenCreate(@RequestParam("TokenType")String tokenType,@ModelAttribute("Token") Token token){
        int randomPin=(int) (Math.random()*900000)+10000;
        int tokenNums=(int) (Math.random()*900000)+10000;
        String tokenNumber="TKN-"+String.valueOf(randomPin);
        if(tokenType.equalsIgnoreCase("Personal Access Token")){
            token.setToken_id("PAT-"+String.valueOf(tokenNums));
        }
        else if(tokenType.equalsIgnoreCase("Security Token")){
            token.setToken_id("SCT-"+String.valueOf(tokenNums));
        }
        else if(tokenType.equalsIgnoreCase("Payment Token")){
            token.setToken_id("PYT-"+String.valueOf(tokenNums));
        }   
        else if(tokenType.equalsIgnoreCase("Asset Token")){
            token.setToken_id("AST-"+String.valueOf(tokenNums));
        }  
        else if(tokenType.equalsIgnoreCase("Issue Raise Token")){
            token.setToken_id("IRT-"+String.valueOf(tokenNums));
        }
        token.setCreatedAt(new Date().toString());
        token.setToken_Number(tokenNumber);
        token.setStatus("Under Review");
        tokenServices.createtoken(token);
        SimpleMailMessage messages = new SimpleMailMessage();
        messages.setFrom("noreply.undergroundcoders@gmail.com");
        messages.setTo(token.getEmail());
        messages.setText("Hi"+token.getName() + "! \nYour Token Has been Submited\nYour Token is Under Review\nYour Token Number:"+token.getToken_Number()+"\nToken Id :"+token.getToken_id()+"\nYour Token Type is"+tokenType);
        messages.setSubject("Token Raised |"+token.getToken_Number());
        mailSender.send(messages);
        return "redirect:/employee/token";
    }
    

    @GetMapping(value = "/view/token/{Token_Number}")
    public String viewTokenDetails(@PathVariable("Token_Number")String tokenNumber,Model model){
        Token tokenDetails = tokenServices.getTokenByTokenNumber(tokenNumber);
        model.addAttribute("tokendetails", tokenDetails);
        return "/EmployeeDashboard/token-details";
    }

}
