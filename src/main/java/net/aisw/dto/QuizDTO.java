package net.aisw.dto;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
@Data
public class QuizDTO {
	private int q_seq;
	private String q_quizLink;
	private int q_ans;
	private int q_type;
}
