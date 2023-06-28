package com.crm.site.Controller;
import java.util.Collections;
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
import org.springframework.web.bind.annotation.RequestParam;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.sql.Date;
import java.text.Format;
import java.text.SimpleDateFormat;
import com.crm.site.Model.Attendence;
import com.crm.site.Model.Token;
import com.crm.site.Model.Users;
import com.crm.site.Services.AttendenceServices;
import com.crm.site.Services.TokenServices;
import com.crm.site.Services.UserServices;

import java.lang.management.ManagementFactory;
import java.lang.management.OperatingSystemMXBean;


@Controller
public class MainController {
    @Autowired
    private JavaMailSender mailSender;

    private UserServices userServices;
    private TokenServices tokenServices;
    private AttendenceServices attendenceServices;
    public MainController(UserServices userServices,TokenServices tokenServices,AttendenceServices attendenceServices){
        super();
        this.userServices = userServices;
        this.tokenServices = tokenServices;
        this.attendenceServices = attendenceServices;

    }
    @GetMapping(value = "/")
    public String root(){
        return "login";
    }
    @GetMapping(value = "/index")
    public String home(){
        return "index";
    }
    @GetMapping(value = "/all-employee")
    public String logout(HttpSession session){
        if(session != null){
            return "AllEmployee";
        }
        return "redirect:/login";
    }
    @GetMapping(value = "/account")
    public String account(HttpSession session){
            return "Accounts";
       
    }

    @GetMapping(value = "/search-employee")
    public String SearchEmployee(){
        return "SearchEmployee";
    }
    @PostMapping(value = "/search-employee")
    public String SearchByUserID(@RequestParam("searchEmployee")String EmID,HttpSession session,Model model){
        List<Users> user = userServices.findUser(EmID);
       if(user!=null){
            model.addAttribute("EmID", user);
            model.addAttribute("counting", user.size());
            return "searchResult";
       }
         System.out.println("null");
        return "SearchEmployee";
    }
    @GetMapping(value = "/send-email")
    public String emailsend(){
        SimpleMailMessage messages = new SimpleMailMessage();
        messages.setFrom("noreply.undergroundcoders@gmail.com");
        messages.setTo("dipanjanm999@gmail.com");
        messages.setText("Hi Dipanjan Mukherjee ! Thanks for joining us");
        messages.setSubject("Notification About CRM");
        mailSender.send(messages);
        return "index";
    }
    @GetMapping(value = "/sendmsg")
    public String sendmsgs(){
        return "sensmsg";
    }

    @PostMapping(value = "/sendmsg")
    public String sendmsg(@RequestParam("number")String Number){
        try {
			// Construct data
			String apiKey = "apikey=" + "NDY2ZTRhNjEzMTUyMzU2YzZiMzQ1MTU1NGQ1Nzc4NjY=";
			String message = "&message=" + "This is your message";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + Number;
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
            System.out.println("Success");
            return "login";
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
            
		}
    }
    @GetMapping(value = "/view/{id}")
    public String viewUser(@PathVariable("id")int id, Model model){
        model.addAttribute("userdata", userServices.updatebyId(id).get()) ;
        return "Update";
    }
    @GetMapping(value="/all-token")
    public String alltoken( HttpSession session){
            List<Token> tokenList = tokenServices.getAllTokens();
            Collections.reverse(tokenList);
            session.setAttribute("AllToken", tokenList);
            return "tokens";
    }

    @GetMapping(value = "/attendence")
    public String attendence(HttpSession session){
        String User__ID =(String)session.getAttribute("UserId");
        session.setAttribute("attendenceInfo", attendenceServices.getAttendence(User__ID));
        return "attendence";
    }
    @PostMapping(value = "/attendence/office-In")
    public String officeIn(@ModelAttribute("Attendence") Attendence attendence, Model model, HttpSession session){
        Date date = new Date(System.currentTimeMillis());
        OperatingSystemMXBean osBean = ManagementFactory.getOperatingSystemMXBean();

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        String stringDate= DateFor.format(date);
        SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm a");
        String formattedTime = dateFormat.format(date);
        String timeString = formattedTime;
        attendence.setDate(stringDate);
        attendence.setOs(osBean.getName());
        attendence.setOsVersion(osBean.getVersion());
        attendence.setInTime(timeString);
        try {
            InetAddress localHost = InetAddress.getLocalHost();
            String ipAddress = localHost.getHostAddress();
            String hostName = localHost.getHostName();
            attendence.setIp(ipAddress);
            attendence.setDesktopName(hostName);
        } catch (Exception e) {
            e.printStackTrace();
        } 
        Format f = new SimpleDateFormat("EEEE");  
        String days = f.format(new Date(System.currentTimeMillis())); 
        attendence.setDay(days); 
        attendence.setIsAttend("IN"); 
        session.setAttribute("officeDate", date);
        attendenceServices.officeIn(attendence);
        System.out.println(attendence.getIsAttend());
        return "redirect:/attendence";
    }
    @PostMapping(value = "/attendence/office-Out")
    public String officeOut(@ModelAttribute("Attendence") Attendence attendence, @RequestParam("IsAttend")String AttendStatus, Model model, HttpSession session){
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        String stringDate= DateFor.format(date);
        String User__ID =(String)session.getAttribute("UserId");
        SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm a");
        String formattedTime = dateFormat.format(date);
        String timeString = formattedTime;
        attendenceServices.officeOut(timeString, AttendStatus, User__ID,stringDate);
        session.setAttribute("Isattendace", attendence.getIsAttend());
        return "redirect:/attendence";
    }
    @GetMapping(value = "/token-details/{Token_Number}")
    public String ViewTokenDetails(@PathVariable("Token_Number")String TokenNumber,Model model, HttpSession session){
        model.addAttribute("tokendetails", tokenServices.getTokenByTokenNumber(TokenNumber));
        return "TokenDetails";
    }

    @PostMapping(value="/update/token/{Token_Number}")
    public String UpdateTokenStatus(@ModelAttribute("Token") Token token,@RequestParam("Status")String status,@PathVariable("Token_Number")String TokenNumber){
        tokenServices.updateTokenStatus(TokenNumber, status);
        return "redirect:/token-details/{Token_Number}";
    }
    @GetMapping(value = "/delete-token/{Token_Number}")
    public String deleteToken(@PathVariable("Token_Number")String tokenNumber,Model model){
        System.out.println(tokenNumber);
        tokenServices.deleteToken(tokenNumber);
        return "redirect:/all-token";
    }

    @PostMapping(value = "/search-token")
    public String searchToken(@ModelAttribute("Token") Token token,@RequestParam("searchtoken") String Search,Model model){
        List<Token> SearchTokenData =  tokenServices.SearchToken(Search.trim());
        model.addAttribute("SearchData", SearchTokenData);
        return "TokenSearch";
    }

}

