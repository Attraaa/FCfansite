package net.aisw.dto;
import java.util.Date;
import java.time.LocalDateTime;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
@Data
public class PlayerDTO {
	private int p_seq;
	private String p_name;
	private Date p_birth;
	private String p_nation;
	private int p_rating;
	private String p_position;
	private Date p_joinDate;
	private int p_backNum;
	private int p_height;
	private int p_weight;
	private String p_photo;
}
