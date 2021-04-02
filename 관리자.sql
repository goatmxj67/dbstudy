-- 새로운 사용자의 추가
-- CREATE USER 사용자명 IDENTIFIED BY 비번;
CREATE USER JAMES IDENTIFIED BY 1111;

-- 권한 부여하기
-- GRANT 권한, 권한 TO 사용자명;
-- CONNECT 권한: 접속 권한
-- RESOURCE 권한: 리소스 사용 권한
-- DBA 권한: 관리자 권한
GRANT DBA TO JAMES;

-- 권한 제거하기
-- REVOKE 권한 FROM 사용자명;
REVOKE DBA FROM JAMES;

-- 사용자 제거하기
-- DROP USER 사용자명;
-- DROP USER 사용자명 CASCADE; 사용자가 데이터를 가지고 있는 경우
DROP USER JAMES CASCADE;

-- 새로운 테이블(표) 만들기
-- CREATE TABLE 테이블명 (칼럼명 칼럼타입 제약조건, ...);

-- 학생 테이블
-- 칼럼: 학번, 이름, 나이, 연락처, 주소, 생일

-- 제약조건
-- 기본키(PRIMARY KEY): 식별자(중복이 없고, 널 값이 없다.) 
-- ex)주민등록번호, 학번, 군번, 제품번호 등
-- 실무에서는 회원번호, 아이디 중 회원번호를 많이 쓴다.
-- 널 값 유무: NULL / NOT NULL
-- 중복 값 유무: UNIQUE
-- 학번은 정수이지만 문자열로 처리함 -> 이유: 빨리 처리됨
-- 한글은 한 글자가 2바이트면 6, 3바이트면 9...

CREATE TABLE STUDENT
(
    STUDENT_NO VARCHAR2(5) PRIMARY KEY,
    NAME VARCHAR2(9) NOT NULL,
    AGE NUMBER NOT NULL,
    CONTACT VARCHAR2(20) NULL,
    ADDRESS VARCHAR2(100) NULL,
    BIRTHDAY DATE -- NULL 처리를 안하면 기본적으로 NULL 상태입니다.
);
