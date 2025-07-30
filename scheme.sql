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