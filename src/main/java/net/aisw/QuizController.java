package net.aisw;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.aisw.dto.QuizDTO;
import net.aisw.service.QuizService;

@Controller
public class QuizController {

    @Autowired
    private QuizService quizService;

    @GetMapping("/quiz")
    public String showQuizPage(Model model) {
        List<QuizDTO> quizList = quizService.getRandomQuizzes();
        model.addAttribute("quizList", quizList);
        return "quiz/quiz";
    }

    @PostMapping("/quiz/submit")
    public String submitQuiz(@RequestParam Map<String, String> paramMap, Model model) {
        List<QuizDTO> quizList = quizService.getQuizzesFromMap(paramMap);
        List<Boolean> isCorrectList = new ArrayList<>();
        int score = 0;

        for (QuizDTO quiz : quizList) {
            String ansStr = paramMap.get("q" + quiz.getQ_seq());
            int userAns = (ansStr != null) ? Integer.parseInt(ansStr) : -1;
            boolean correct = (userAns == quiz.getQ_ans());
            isCorrectList.add(correct);
            if (correct) score++;
        }

        model.addAttribute("quizList", quizList);
        model.addAttribute("isCorrectList", isCorrectList);
        model.addAttribute("score", score);
        model.addAttribute("total", quizList.size());

        return "quiz/quizResult";
    }
}
