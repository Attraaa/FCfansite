package net.aisw.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aisw.dto.userDTO;
import net.aisw.mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	private UserMapper uMapper;
	public int getLogin(userDTO userVo) {
		return uMapper.getLogin(userVo);
	}
	public boolean getRegister(userDTO userVo) {
		return uMapper.getRegister(userVo);
	}
	public String getUserName(String userID) {
		return uMapper.getUserName(userID);
	}
	public boolean ReplacePassword(userDTO userVo) {
		return uMapper.ReplacePassword(userVo);
	}
	public HashMap<String, String> getUserInfo(String userID) {
		return uMapper.getUserInfo(userID);
	}
}