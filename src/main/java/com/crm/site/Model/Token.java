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
public class Token {
    @Id  
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long Id;
    @Column(unique = true,nullable = false)
    private String Token_id;
    @Column(unique = true,nullable = false)
    private String Token_Number;
    private String Name;
    private String Email;  
    private String Contact;
    @Column(length=2000) 
    private String Message;
    private String TokenType;
    private String CreatedAt;
    private String Status;
    private String UserId;
    private String EmployeeType;
    private String Department;
    private String EmployeeRole;

}
