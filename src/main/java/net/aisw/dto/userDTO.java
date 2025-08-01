package net.aisw.dto;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
@Data
public class userDTO{

private int u_seq;
private String u_id;
private String u_pwd;
private String u_name;
private String u_birth;
private String u_joinDate;
private String u_why;
private int u_give_heart;

}

