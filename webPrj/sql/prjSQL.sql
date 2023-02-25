CREATE TABLE user(
     userId varchar(20) primary key
     ,userName varchar(10) not null
     ,userPw varchar(32) not null
);

CREATE TABLE bbs(
	num int primary key auto_increment,
	userId varchar(20),
	title varchar(50) default '제목없음',
	content text not null,
	regdate date default (current_date),
	visitcnt int default 0,
	foreign key (userId) references user(userId)
);
    
DROP TABLE user;
DROP TABLE bbs;
select * from bbs; 
select * from user; 
 --dummy date
INSERT INTO user VALUES ('king', '장진욱', md5('1111'));
INSERT INTO user VALUES ('king', '', md5('1111'), md5('1111'));
INSERT INTO user VALUES ('user5', '유저', md5('1111'));
INSERT INTO user VALUES ('user10', '유저', md5('1111'));
INSERT INTO user VALUES ('user15', '유저', md5('1111'));
INSERT INTO user VALUES ('user20', '유저', md5('1111'));
INSERT INTO user VALUES ('user25', '유저', md5('1111'));
INSERT INTO user VALUES ('user30', '유저', md5('1111'));
INSERT INTO user VALUES ('user35', '유저', md5('1111'));
INSERT INTO user VALUES ('user40', '유저', md5('1111'));
commit;

INSERT INTO bbs VALUES(0, 'king', 'Hello', 'testing...', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의드립니다', '이 상품하고 곧 있으면 출시하는 23ss에 있는 동일 제품하고 차이가 뭔가요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user5', '사이즈 교환 문의 ', '패딩이 안쪽에 살짝튼어져서 솜이튀어나는데 as가능할까요ㅜ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '발매 문의 ', '23ss 첫 발매일 궁금합니다ㅎㅎ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '2차 3차 출시 문의 ', '언제쯤 발매하나요 !?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '상품문의 ', '안녕하세요 혹시 이거 사이즈 2 재입고 예정있을까요?? 아니면 없다면 혹시 170에 70kg인 저에게 사이즈 3은 클수있을까요?? 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user15', '23SS아이템문의', '재입고 문의3사이즈', current_date , 0);
INSERT INTO bbs VALUES(0, 'user10', '배송변경 문의', 'drs 자켓 3사이즈는 재고 없나요??..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user40', '상품 입고 관련 문의', '앞으로 시즌마다 drs 자켓은 안나오는건지 궁금합니다 ㅠㅠ ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', 'ss22제품과 동일한건가요? ', '구매하고 싶은데 22aw에는 발매가 안된거 같아서요..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의', '재입고 될 예정이 있는지 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', '배송전 취소', '163/75인데 많이 클까요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '재입고문의', '3사이즈 재입고 예정 있나요 ?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '5	세탁방법', '1사이즈 재입고 예정 없나요 ㅠㅠ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '	제품 질문합니다.', '안녕하세요 혹시 23년도에도 오버밀팬츠 디자인이 재발매될 예정이 있을까요?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의드립니다', '이 상품하고 곧 있으면 출시하는 23ss에 있는 동일 제품하고 차이가 뭔가요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user5', '사이즈 교환 문의 ', '패딩이 안쪽에 살짝튼어져서 솜이튀어나는데 as가능할까요ㅜ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '발매 문의 ', '23ss 첫 발매일 궁금합니다ㅎㅎ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '2차 3차 출시 문의 ', '언제쯤 발매하나요 !?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '상품문의 ', '안녕하세요 혹시 이거 사이즈 2 재입고 예정있을까요?? 아니면 없다면 혹시 170에 70kg인 저에게 사이즈 3은 클수있을까요?? 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user15', '23SS아이템문의', '재입고 문의3사이즈', current_date , 0);
INSERT INTO bbs VALUES(0, 'user10', '배송변경 문의', 'drs 자켓 3사이즈는 재고 없나요??..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user40', '상품 입고 관련 문의', '앞으로 시즌마다 drs 자켓은 안나오는건지 궁금합니다 ㅠㅠ ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', 'ss22제품과 동일한건가요? ', '구매하고 싶은데 22aw에는 발매가 안된거 같아서요..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의', '재입고 될 예정이 있는지 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', '배송전 취소', '163/75인데 많이 클까요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '재입고문의', '3사이즈 재입고 예정 있나요 ?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '5	세탁방법', '1사이즈 재입고 예정 없나요 ㅠㅠ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '	제품 질문합니다.', '안녕하세요 혹시 23년도에도 오버밀팬츠 디자인이 재발매될 예정이 있을까요?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의드립니다', '이 상품하고 곧 있으면 출시하는 23ss에 있는 동일 제품하고 차이가 뭔가요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user5', '사이즈 교환 문의 ', '패딩이 안쪽에 살짝튼어져서 솜이튀어나는데 as가능할까요ㅜ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '발매 문의 ', '23ss 첫 발매일 궁금합니다ㅎㅎ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '2차 3차 출시 문의 ', '언제쯤 발매하나요 !?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '상품문의 ', '안녕하세요 혹시 이거 사이즈 2 재입고 예정있을까요?? 아니면 없다면 혹시 170에 70kg인 저에게 사이즈 3은 클수있을까요?? 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user15', '23SS아이템문의', '재입고 문의3사이즈', current_date , 0);
INSERT INTO bbs VALUES(0, 'user10', '배송변경 문의', 'drs 자켓 3사이즈는 재고 없나요??..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user40', '상품 입고 관련 문의', '앞으로 시즌마다 drs 자켓은 안나오는건지 궁금합니다 ㅠㅠ ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', 'ss22제품과 동일한건가요? ', '구매하고 싶은데 22aw에는 발매가 안된거 같아서요..', current_date , 0);
INSERT INTO bbs VALUES(0, 'user1', '사이즈 문의', '재입고 될 예정이 있는지 궁금합니다', current_date , 0);
INSERT INTO bbs VALUES(0, 'user35', '배송전 취소', '163/75인데 많이 클까요??', current_date , 0);
INSERT INTO bbs VALUES(0, 'user30', '재입고문의', '3사이즈 재입고 예정 있나요 ?', current_date , 0);
INSERT INTO bbs VALUES(0, 'user20', '5	세탁방법', '1사이즈 재입고 예정 없나요 ㅠㅠ', current_date , 0);
INSERT INTO bbs VALUES(0, 'user25', '	제품 질문합니다.', '안녕하세요 혹시 23년도에도 오버밀팬츠 디자인이 재발매될 예정이 있을까요?', current_date , 0);

