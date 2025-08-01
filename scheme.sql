CREATE DATABASE MCIFANS
DEFAULT CHARACTER SET utf8;


-- 유저 정보 테이블
CREATE TABLE users (
u_seq INT PRIMARY KEY AUTO_INCREMENT,
u_id VARCHAR(30) NOT NULL UNIQUE,
u_pwd VARCHAR(30) NOT NULL,
u_name varchar(30)  NOT NULL,
u_birth DATE,
u_joinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 커뮤니티 글
CREATE TABLE community(
c_seq INT PRIMARY KEY AUTO_INCREMENT,
c_title VARCHAR(50),
c_contents VARCHAR(5000),
c_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
u_name VARCHAR(30),
u_id VARCHAR(30),
c_like INT DEFAULT 0,
c_dislike INT DEFAULT 0,
FOREIGN KEY (u_id) REFERENCES users(u_id)
);

--====================================================================================

-- 선수정보테이블
CREATE TABLE player(
p_seq INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(50),
p_birth DATE,
p_nation VARCHAR(50),
p_rating INT,
p_position VARCHAR(50),
p_joinDate DATE,
p_backNum INT,
p_height INT,
p_weight INT,
p_photo VARCHAR(5000)
);

INSERT INTO player(
    p_name, p_birth, p_nation, p_rating, p_position,
    p_joinDate, p_backNum, p_height, p_weight, p_photo
) VALUES (
    '엘링 홀란', '2000-07-21', '노르웨이', 0, '스트라이커',
    '2022-07-01', 9, 194, 88, '/image/erlinghaaland.jpg'
);

INSERT INTO player(
    p_name, p_birth, p_nation, p_rating, p_position,
    p_joinDate, p_backNum, p_height, p_weight, p_photo
) VALUES (
    '필 포든', '2000-05-28', '잉글랜드', 0, '미드필더',
    '2017-11-21', 47, 171, 70, '/image/philfoden.jpg'
);

INSERT INTO player(
    p_name, p_birth, p_nation, p_rating, p_position,
    p_joinDate, p_backNum, p_height, p_weight, p_photo
) VALUES (
    '베르나르두 실바', '1994-08-10', '포르투갈', 0, '미드필더',
    '2017-05-26', 20, 173, 65, '/image/silva.jpg'
);

INSERT INTO player(
    p_name, p_birth, p_nation, p_rating, p_position,
    p_joinDate, p_backNum, p_height, p_weight, p_photo
) VALUES (
    '로드리', '1996-06-22', '스페인', 0, '미드필더',
    '2019-07-04', 16, 191, 82, '/image/rodri.jpg'
);

INSERT INTO player(
    p_name, p_birth, p_nation, p_rating, p_position,
    p_joinDate, p_backNum, p_height, p_weight, p_photo
) VALUES (
    '후벵 디아스', '1997-05-14', '포르투갈', 0, '수비수',
    '2020-09-30', 3, 187, 82, '/image/dias.jpg'
);

--====================================================================================

-- 퀴즈 모음
CREATE TABLE quiz (
q_seq INT PRIMARY KEY AUTO_INCREMENT,
q_quizLink VARCHAR(5000),
q_ans INT,
q_type INT -- 1 : 4지선다, 2 : OX
);

INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q1.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q2.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q3.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q4.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q5.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q6.png', 4, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q7.png', 1, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q8.png', 4, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q9.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q10.png', 4, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q11.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q12.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q13.png', 1, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q14.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q15.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q16.png', 2, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q17.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q18.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q19.png', 2, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q20.png', 1, 2);

INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q21.png', 4, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q22.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q23.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q24.png', 1, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q25.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q26.png', 1, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q27.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q28.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q29.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q30.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q31.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q32.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q33.png', 2, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q34.png', 3, 1);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q35.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q36.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q37.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q38.png', 2, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q39.png', 1, 2);
INSERT INTO quiz(q_quizLink, q_ans, q_type) 
VALUES('/image/quiz/q40.png', 2, 2);


--====================================================================================


-- 구단 역사 테이블
CREATE TABLE history (
h_date DATE,
h_title VARCHAR(500),
h_content VARCHAR(5000),
h_photo VARCHAR(5000)
);

INSERT INTO history VALUES
('1894-04-16', '맨체스터 시티 창단', '맨체스터 시티 구단이 창단하게 된 날짜이다.', '/image/city_creation.jpg');
INSERT INTO history VALUES
('2016-08-02', '르로이 사네, 맨체스터 시티 합류', '맨체스터 시티의 공격에 큰 도움을 준 르로이 사네가 합류한 날이다.', '/image/sane.jpg');
INSERT INTO history VALUES
('2018-05-13', '리그 최다 승점 우승', '맨체스터 시티가 리그 역대 최초로 100점 승점, 역대 최다 승점 우승을 달성한 순간이다.', '/image/17-18_champ.jpg');
INSERT INTO history VALUES
('2022-05-23', '21-22시즌 극적인 역전 우승', '38라운드 기준 리버풀과 승점차는 단 한 점밖에 나지 않았다. 그런 상황에서 맞이한 38R 아스톤빌라전. 경기 70분까지 상대에게 두 골을 먹히며 남은 20분동안 3골을 넣어야 승리하고 우승하는 상황. 상황을 보면 뒤집기란 매우 힘든 상태였지만 귄도안, 로드리가 동점을 만들어 내며 무승부 상태까지 만들어두었다. 그리고 81분 귄도안이 다시 한 번 득점에 성공하게 되며 3-2 역전을 만들어냈다. 그리고 경기가 끝날 때까지 이 점수를 유지하게 되며 결국 위험했던 우승 기회를 엄청난 드라마를 통해 역전에 성공하게 되었다 .', '/image/gundogan.jpg');
INSERT INTO history VALUES
('2022-10-02', '22-23시즌 맨유 상대 6-3 대승', '22-23시즌 맨체스터 유나이티드를 상대로 6-3이라는 다득점을 통하여 대승한 날이다.', '/image/6-3.jpg');
INSERT INTO history VALUES
('2023-05-18', '레알마드리드 상대 설욕 승', '맨체스터 시티는 항상 챔피언스리그에서 레알마드리드만 만나면 패배하고는 했었다. 하지만 22-23시즌 강력한 팀 구성을 통해 드디어 레알마드리드를 상대로 챔피언스리그에서 승리를 거두며 결승 진출에 성공했다.', '/image/real_win.jpg');
INSERT INTO history VALUES
('2023-06-10', '맨체스터 시티 사상 최초 챔피언스리그 우승, 트레블', '맨체스터 시티가 계속해서 리그는 우승해왔지만 가장 목이 말랐던 챔피언스리그 우승을 드디어 이루어낸 날이다. 뿐만 아니라 압도적인 팀 전력을 통해 리그, FA컵, 챔피언스 리그를 전부 우승한 트레블 시즌을 완성시킨 기념비적인 날이다.', '/image/ucl_win.jpg');

--====================================================================================