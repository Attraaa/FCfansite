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

        // ✅ 콘솔에 출력해서 잘 불러오는지 확인
        System.out.println("📌 DB에서 불러온 히스토리: " + dto);

        return dto;
		
		//return hMapper.todayHistory();
	}

}
