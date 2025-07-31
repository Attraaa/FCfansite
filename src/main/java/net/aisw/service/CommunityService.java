package net.aisw.service;

import java.util.List;

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
    public List<communityDTO> getCommunityInfo() {
        return cMapper.getCommunityInfo();
    }
    public communityDTO getCommunityDetail(int c_seq) {
        return cMapper.getCommunityDetail(c_seq);
    }
}
