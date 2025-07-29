package net.aisw.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.communityDTO;

@Mapper
public interface CommunityMapper {
    public int SavePost(communityDTO cmVo);
}
