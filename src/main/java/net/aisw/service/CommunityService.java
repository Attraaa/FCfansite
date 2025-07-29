package net.aisw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aisw.dto.communityDTO;
import net.aisw.mapper.CommunityMapper;

@Service
public class CommunityService {
    @Autowired
    private CommunityMapper cMapper;
    
    public int SavePost(communityDTO cmVo){
        
        return cMapper.SavePost(cmVo);
    }
    
}
