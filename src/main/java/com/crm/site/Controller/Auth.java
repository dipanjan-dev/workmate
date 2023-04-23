package com.crm.site.Controller;
import java.net.InetAddress;
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
import org.springframework.web.bind.annotation.RequestParam;
import com.crm.site.Model.Users;
import com.crm.site.Services.UserServices;

@Controller
public class Auth {
    @Autowired
    private JavaMailSender mailSender;
    private UserServices userServices;

    public Auth(UserServices userServices){
        super();
        this.userServices = userServices;

    }

    public String projecturl = "http://localhost:8080";


    @GetMapping(value = "/login")
    public String login(){
        try {
            InetAddress localHost = InetAddress.getLocalHost();
            String ipAddress = localHost.getHostAddress();
            String hostName = localHost.getHostName();
            System.out.println("IP Address: " + ipAddress);
            System.out.println("Host Name: " + hostName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "login";
    }
    @GetMapping(value = "/create-admin")
    public String register(){
        return "register";
    }
    @GetMapping(value = "/add-employee")
    public String addUsers(){
        return "AddUser";
    }


    @PostMapping(value = "/register")
    public String registeruser(@ModelAttribute("Users") Users users,@RequestParam("RepeatPassword")String RepeatPassword,@RequestParam("Email")String Email, Model model,HttpSession session){
        Users user = userServices.getUserByEmail(Email);
        if(!(user==null)){
            model.addAttribute("error", "Email Already Register");
            return "register";
        }
            
        else if(!(users.getPassword().equals(RepeatPassword))){
            model.addAttribute("error", "Password Not Match");
            return "register";
        }
        int randomPin=(int) (Math.random()*9000)+1000;
        String userid = "CI-" + String.valueOf(randomPin);
        users.setCreatedAT(new Date().toString());
        users.setUserId(userid);
        users.setUserType("Admin");
        SimpleMailMessage messages = new SimpleMailMessage();
        messages.setFrom("noreply.undergroundcoders@gmail.com");
        messages.setTo(users.getEmail());
        messages.setText("Hi"+users.getName() +", Thanks for joining us");
        messages.setSubject("Notification About CRM");
        mailSender.send(messages);
        userServices.creatUsers(users);
        session.setAttribute("Success", "Your Account Created Successfully");
        return "redirect:/";
    }



    @PostMapping(value = "/register-user")
    public String registeruserAdmin(@ModelAttribute("Users") Users users,@RequestParam("RepeatPassword")String RepeatPassword,@RequestParam("Email")String Email,@RequestParam("Name")String Name, Model model ,HttpSession session){
        Users user = userServices.getUserByEmail(Email);
        System.out.println(user);
        if(!(user==null)){
            model.addAttribute("error", "Email Already Register");
            System.out.println("Error");;
            return "redirect:/add-employee";
        }
            
        else if(!(users.getPassword().equals(RepeatPassword))){
            model.addAttribute("error", "Password Not Match");
            System.out.println("Error");;
            return "register";
        }
        int randomPin=(int) (Math.random()*900000)+100000;
        String userid="CI-" + String.valueOf(randomPin);
        users.setCreatedAT(new Date().toString());
        users.setUserId(userid);
        userServices.creatUsers(users);
        session.setAttribute("alluser", userServices.getUsers());
        SimpleMailMessage messages = new SimpleMailMessage();
        messages.setFrom("noreply.undergroundcoders@gmail.com");
        messages.setTo(Email);
        messages.setText("Hi "+Name+ ",Welcome to Workmate.\nYour Account Created. Below we have Provided Your Login credentials\nYour Username :"+Email+"\nYour Password :" + RepeatPassword +"\nfor login you can follow this link : " +projecturl+"/login \n\n\n\n\n\nWorkmate is an office employment management app that provides a comprehensive solution for managing employee data in a company. It is designed to help businesses keep track of their employees' information, such as their personal details, work history, leave records, and more.\n\nWith Workmate, businesses can easily manage their employee database and keep it up-to-date with the latest information. It allows HR departments to efficiently manage employee information and automate routine HR tasks such as onboarding, performance tracking, and payroll processing.");
        messages.setSubject("Account Created | Workmate");
        mailSender.send(messages);
        model.addAttribute("Success", "Your Account Created Successfully");
        System.out.println("Success");
        return "redirect:/index";
    }
    @PostMapping("/login")
    public String loginAut(@RequestParam("email")String email , @RequestParam("password")String password,HttpSession session,Model model){
        List<Users> user = userServices.getUsers();
        for(Users u:user){
            if((u.getEmail().equalsIgnoreCase(email) || u.getUserId().equalsIgnoreCase(email)) &&u.getPassword().equals(password)){
                if(u.getUserType().equals("Admin")){
                    session.setAttribute("userInfo", u);
                    session.setAttribute("alluser", userServices.getUsers());
                    return "redirect:/index";
                }
                else{
                    session.setAttribute("userInfo", u);
                    session.setAttribute("UserId", u.getUserId());
                    return "redirect:/employee/index";
                }
            }
        }
        session.setAttribute("error", "Invalid Login credentials");
        return "/login";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session){
        if(session != null){
            session.invalidate();
            return "redirect:/login";
        }
        return "redirect:/login";
    }

    @GetMapping(value = "/delete/{id}")
    public String deleteuser(@PathVariable("id")int id, Model model,HttpSession session){
        userServices.deleteuserbyid(id);
        session.setAttribute("alluser", userServices.getUsers());
        return"redirect:/all-employee";
    }

    @GetMapping(value = "/update/{id}")
    public String updateuser(@PathVariable("id")int id, Model model){
        model.addAttribute("userdata", userServices.updatebyId(id).get()) ;
        return "Update";
    }

    @PostMapping(value = "/updated/user-inform")
    public String updateuserdata(@ModelAttribute("Users")Users users,Model model ,HttpSession session){
        userServices.updateusers(users);
        session.setAttribute("alluser", userServices.getUsers());
        return "redirect:/index";
    }
    
}
