package net.aisw.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.HashMap;
import java.util.List;

import net.aisw.dto.PlayerDTO;

@Mapper
public interface PlayerMapper {
    public List<PlayerDTO> getAllPlayers();
	public HashMap<String, String> getPlayerInfo(PlayerDTO playerVo);
	public boolean GiveHeart(PlayerDTO pVo);
}
