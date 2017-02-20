-- 회원정보 테이블
CREATE TABLE blog_users(
	user_id VARCHAR2(50) PRIMARY KEY,			-- 회원의 아이디
	user_pwd VARCHAR2(200) NOT NULL, 			-- 회원의 비밀번호
	user_email VARCHAR2(100) NOT NULL,			-- 회원의 이메일
	regdate DATE								-- 회원의 가입일
);

-- 블로그 정보
CREATE TABLE blog_info(
	blog_id NUMBER PRIMARY KEY,					-- 블로그 고유 번호
	blog_title VARCHAR2(200) NOT NULL,			-- 블로그 제목
	content VARCHAR2(500),						-- 블로그 소개글
	title_img VARCHAR2(200),					-- 블로그 이미지
	user_id VARCHAR2(50) NOT NULL,				-- 블로그 소유자
	regdate DATE								-- 블로그 생성일
)

-- 게시판 테이블
CREATE TABLE blog_board(
	num NUMBER PRIMARY KEY,						-- 게시글 번호
	writer VARCHAR2(50) NOT NULL,				-- 게시글 작성자
	title VARCHAR2(200) NOT NULL,				-- 게시글 제목
	board_content CLOB, 						-- 게시글 내용
	view_count NUMBER,							-- 게시글 조회수
	regdate DATE,								-- 게시글 등록일
	blog_id NUMBER NOT NULL,					-- 게시판 주인 확인
	cate_num NUMBER NOT NULL 					-- 게시글 카테고리 정보
);

-- 게시판 시퀀스
CREATE SEQUENCE blog_boardboard_seq NOCACHE;

-- 카테고리 정보
CREATE TABLE blog_category(
	cate_num NUMBER PRIMARY KEY,				-- 카테고리 번호
	cate_title VARCHAR2(50) NOT NULL,			-- 카테고리 명
	asc_number NUMBER NOT NULL,					-- 카테고리 순서
	blog_id NUMBER NOT NULL 					-- 카테고리 주인
);

-- 게시판 카테고리 시퀀스
CREATE SEQUENCE blog_category_seq NOCACHE;

-- 덧글 정보
CREATE TABLE blog_comment(
	num NUMBER primary key, 					-- 덧글의 글번호
	writer VARCHAR2(100),						-- 덧글의 작성자
	content VARCHAR2(500),						-- 덧글의 내용
	target_id VARCHAR2(100), 					-- 덧글의 대상이 되는 아이디
	ref_group NUMBER, 							-- 덧글 그룹
	comment_group NUMBER, 						-- 덧글 내에서의 그룹
	regdate DATE								-- 덧글 작성일
);

-- 덧글 시퀀스
create sequence blog_comment_seq NOCACHE;