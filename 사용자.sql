-- 새로운 사용자의 추가
-- CREATE USER 사용자명 IDENTIFIED BY 비번;
CREATE USER JAMES IDENTIFIED BY 1111;

-- 권한 부여하기
-- GRANT 권한, 권한 TO 사용자명;
-- CONNECT 권한: 접속 권한
-- RESOURCE 권한: 리소스 사용 권한
-- DBA 권한: 관리자 권한
GRANT DBA TO JAMES;

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

-- CRUD
-- C: CREATE, INSERT
-- R: READ,   SELECT
-- U: UPDATE, UPDATE
-- D: DELETE, DELETE

-- INSERT문
-- INSERT INTO 테이블명 (칼럼1, 칼럼2, ...) VALUES (값1, 값2, ...);
-- INSERT INTO 테이블명 VALUES (값1, 값2, ...); 모든 칼럼에 값을 넣는 경우
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10101', '제임스', 8, NULL, NULL, '2014-05-05');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10102', '엘리스', 8, '010-1111-1111', '서울', '2014-06-06');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10103', '스미스', 8, '010-2222-2222', NULL, '2014-07-07');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10104', '브라운', 8, NULL, '인천', '2014-08-08');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10105', '나타샤', 8, NULL, '경기', '2014-09-09');


-- SELECT문
-- SELECT 칼럼1, 칼럼2, ... FROM 테이블명;
-- SELECT 칼럼1, 칼럼2, ... FROM 테이블명 WHERE 조건식;
SELECT STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY FROM STUDENT;
SELECT STUDENT_NO, NAME FROM STUDENT;

SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NULL;
SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NOT NULL;
SELECT STUDENT_NO, NAME, ADDRESS FROM STUDENT WHERE ADDRESS = '서울';

-- UPDATE문
-- UPDATE 테이블명 SET 수정할 내용;
-- UPDATE 테이블명 SET 수정할 내용 WHERE 조건식;
UPDATE STUDENT SET AGE = AGE + 1;
UPDATE STUDENT SET CONTACT = '010-3333-3333', ADDRESS = '강원' WHERE NAME = '제임스'; -- 안 좋다. 제임스는 여러 명이 가능하므로.
UPDATE STUDENT SET CONTACT = '010-3333-3333', ADDRESS = '강원' WHERE STUDENT_NO = '10101';

-- DELETE문
-- DELETE FROM 테이블명; 전체 데이터 삭제
-- DELETE FROM 테이블명 WHERE 조건식;
DELETE FROM STUDENT WHERE STUDENT_NO = '10102';

-- COMMIT과 ROLLBACK
-- 트랜잭션(TRANSACTION): 어떤 작업을 의미한다. 여러 세부 작업으로 나누어 질 수 있다.
-- 예: 은행 이체(내 통장에서 출금 + 상대 통장에 입금)
-- 트랜잭션은 반드시 원자성의 특성을 가진다. (ALL or NOTHING)
-- COMMIT: 트랜잭션이 성공한 경우 작업을 DB에 반영한다.
-- ROLLBACK: 트랜잭션이 샐패한 경우 모든 작업을 취소한다.

-- 트랜잭션의 대상: INSERT, UPDATE, DELETE
