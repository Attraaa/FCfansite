package net.aisw.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aisw.dto.QuizDTO;
import net.aisw.mapper.QuizMapper;

@Service
public class QuizService {

    @Autowired
    private QuizMapper qMapper;

    public List<QuizDTO> getRandomQuizzes() {
        return qMapper.selectRandomQuizzes();
    }

    public List<QuizDTO> getQuizzesFromMap(Map<String, String> map) {
        List<Integer> qSeqList = map.keySet().stream()
                .filter(k -> k.startsWith("q"))
                .map(k -> Integer.parseInt(k.substring(1)))
                .collect(Collectors.toList());
        return qMapper.selectBySeqList(qSeqList);
    }
}
