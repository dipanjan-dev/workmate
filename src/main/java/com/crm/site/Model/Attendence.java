package com.crm.site.Model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Table
@Entity
@Data
public class Attendence {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long Id;
    private String date;
    private String InTime;
    private String OutTime;
    private String IsAttend;
    private String day;
    private String userId;
    private String Name;
    private String Ip;
    private String DesktopName;
    private String os;
    private String osVersion;
    
}
