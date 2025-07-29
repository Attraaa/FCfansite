package net.aisw.dto;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
@Data
public class HistoryDTO {
	private Date h_date;
	private String h_title;
	private String h_content;
	private String h_photo;

	@Override
	public String toString() {
		return "[날짜: " + h_date + ", 제목: " + h_title + ", 내용: " + h_content + ", 사진: " + h_photo + "]";
	}
}
