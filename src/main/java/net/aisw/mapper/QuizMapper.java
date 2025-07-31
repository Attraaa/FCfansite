package net.aisw.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.aisw.dto.QuizDTO;

@Mapper
public interface QuizMapper {
    List<QuizDTO> selectRandomQuizzes();
    List<QuizDTO> selectBySeqList(List<Integer> qSeqList);
}
