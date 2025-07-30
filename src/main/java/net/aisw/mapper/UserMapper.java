package net.aisw.mapper;


import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.userDTO;

@Mapper
public interface UserMapper {
	public int getLogin(userDTO userVo);
	public boolean getRegister(userDTO userVo);
	public boolean ReplacePassword(userDTO userVo);
	public String getUserName(String userID);
	public HashMap<String, String> getUserInfo(String userID);
	
	
}
