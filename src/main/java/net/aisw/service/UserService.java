package net.aisw.service;

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
}