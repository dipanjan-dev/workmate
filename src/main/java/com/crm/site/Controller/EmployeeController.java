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
import com.crm.site.Model.Users;
import com.crm.site.Services.TokenServices;
import com.crm.site.Services.UserServices;
@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @Autowired
    private JavaMailSender mailSender;
    private TokenServices tokenServices;
    private UserServices userServices;
    public EmployeeController(TokenServices tokenServices,UserServices userServices){
        super();
        this.tokenServices = tokenServices;
        this.userServices = userServices;
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
    
    @GetMapping(value = "/settings")
    public String settings(HttpSession session){
        return "/EmployeeDashboard/settings";
    }
    @GetMapping(value = "/password-changed")
    public String passwordChanged(HttpSession session){
        return "/EmployeeDashboard/PasswordChanged";
    }


    @PostMapping(value = "employee/change-password")
    public String changePassword(HttpSession session,@RequestParam("oldPassword") String oldPassword,@RequestParam("NewPassword") String NewPassword,@RequestParam("RepreatNewPassword") String RnewPassword){
        String User__ID =(String)session.getAttribute("UserId");
        Users user = userServices.getUserViaUserID(User__ID);
        if(user.getPassword().equals(oldPassword)){
            if(RnewPassword.equals(NewPassword)){
                userServices.updatePassword(RnewPassword, User__ID);   
            }
            else{
                session.setAttribute("PasswordNotMatch", "Password Not Match");
                return "redirect:/employee/settings";
            }
        }
        else{
            session.setAttribute("errorPassword", "Issue Found");
            return "redirect:/employee/settings";
        }
        return "redirect:/employee/password-changed";
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
        messages.setFrom("workmate.system@gmail.com");
        messages.setTo(token.getEmail());
        messages.setText("Hi "+token.getName() + "! \nyour Token Has been Submited\nyour Token is Under Review\nyour Token Number:"+token.getToken_Number()+"\nToken Id :"+token.getToken_id()+"\nyour Token Type is"+tokenType+"Our team will carefully evaluate your token to ensure that it meets our quality standards and is appropriate for our platform.");
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


    @GetMapping(value = "/delete/token/{Token_Number}")
    public String delete(@PathVariable("Token_Number")String tokenNumber,Model model){
        System.out.println(tokenNumber);
        tokenServices.deleteToken(tokenNumber);
        return "redirect:/employee/token";
    }
}
