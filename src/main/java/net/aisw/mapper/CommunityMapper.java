package net.aisw.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.communityDTO;

@Mapper
public interface CommunityMapper {
    public int SavePost(communityDTO cmVo);
    public List<communityDTO> getCommunityInfo();
    public communityDTO getCommunityDetail(int seq);
}
