package com.crm.site.Model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table
@Data
public class Users {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long Id;
    @Column(unique = true,nullable = false)
    private String UserId;
    private String UserType;
    private String employeeType;
    private String department;
    private String EmployeeRole;
    private String JoiningDate;
    private String Name;
    private String Email;
    private String AlternateEmail;
    private String contact;
    private String dob;
    @Column(length=2000)   
    private String address;
    private String Password;
    private String Status;
    private String CreatedAT;
}
