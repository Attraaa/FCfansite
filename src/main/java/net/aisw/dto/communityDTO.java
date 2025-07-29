package net.aisw.dto;
import java.util.Date;
import java.time.LocalDateTime;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
@Data
public class communityDTO{
    private  int c_seq;
    private  String c_title;
    private  String  c_contents;
    private  LocalDateTime c_date;
    private  String  u_name;
    private  String  u_id;
    private  int c_like;
    private  int c_dislike;
}
    
