package net.aisw.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.HistoryDTO;

@Mapper
public interface HistoryMapper {
	HistoryDTO getHistory();
}
