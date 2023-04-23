package com.crm.site.Services;

import java.util.List;

import com.crm.site.Model.Attendence;

public interface AttendenceServices {
       Attendence officeIn(Attendence attendence);
       void officeOut(String OutTime,String isAttend,String UserID,String Date);
       List<Attendence> getAttendence(String User_Id);
}
