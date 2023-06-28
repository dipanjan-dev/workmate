package com.crm.site.Repository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import com.crm.site.Model.Attendence;

public interface AttendenceRepository extends JpaRepository<Attendence,Long>{
    @Query("From Attendence where user_id=?1 ORDER BY date DESC")
    List<Attendence> getAttendenceById(String UserId);
  
    @Modifying
    @Transactional
    @Query("UPDATE Attendence SET out_time=?1 ,is_attend=?2 WHERE user_id=?3 and date=?4")
    void OfficeOut(String outTime, String isAttend,String UserId,String Date);
    
}
