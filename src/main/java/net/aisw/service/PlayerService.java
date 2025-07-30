package net.aisw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aisw.dto.PlayerDTO;
import net.aisw.mapper.PlayerMapper;

import java.util.HashMap;
import java.util.List;
@Service
public class PlayerService {
    @Autowired
    private PlayerMapper pMapper;
    
    public List<PlayerDTO> getAllPlayers() {
        return pMapper.getAllPlayers();
    }
    
    public HashMap<String, String> getPlayerInfo(PlayerDTO pVo) {
        return pMapper.getPlayerInfo(pVo);
    }
}
