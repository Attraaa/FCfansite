package net.aisw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aisw.dto.HistoryDTO;
import net.aisw.mapper.HistoryMapper;

@Service
public class HistoryService {

	@Autowired
	private HistoryMapper hMapper;
	public HistoryDTO getHistory() {
		HistoryDTO dto = hMapper.getHistory();

        return dto;
	}

}
