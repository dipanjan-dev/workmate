package com.crm.site.Services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crm.site.Model.Attendence;
import com.crm.site.Repository.AttendenceRepository;
import com.crm.site.Services.AttendenceServices;

@Service
public class AttendenceServicesIMPL implements AttendenceServices{

    public AttendenceRepository attendenceRepository;
    public AttendenceServicesIMPL(AttendenceRepository attendenceRepository){
        super();
        this.attendenceRepository = attendenceRepository;
    }

    @Override
    public Attendence officeIn(Attendence attendence) {
        return attendenceRepository.save(attendence);
    }

    @Override
    public List<Attendence> getAttendence(String User_Id) {
        List<Attendence> attendencesInfo =  attendenceRepository.getAttendenceById(User_Id);
        if(attendencesInfo.isEmpty()){
            return null;
        }
        else{
            return attendencesInfo;
        }
    }

    @Override
    public void officeOut(String OutTime, String isAttend,String UserID,String Date) {
        attendenceRepository.OfficeOut(OutTime,isAttend,UserID,Date);
    }

  
    
}
