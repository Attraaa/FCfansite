package net.aisw.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.userDTO;

@Mapper
public interface UserMapper {
	public int getLogin(userDTO userVo);
	public boolean getRegister(userDTO userVo);
}
