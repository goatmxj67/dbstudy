DROP TABLE BOOK; 
CREATE TABLE BOOK
(
    BOOK_NO NUMBER PRIMARY KEY,
    TITLE VARCHAR2(100) NOT NULL,
    AUTHOR VARCHAR2(100),
    PRICE NUMBER,
    PUBLICATION_DATE DATE,
    ISBN VARCHAR2(100) NOT NULL
);

INSERT INTO BOOK VALUES (101, '어린왕자', '생텍쥐베리', 10000, '20/05/01', '111-22-333333-4-5');
INSERT INTO BOOK VALUES (102, '토지', '박경리', 20000, '20/06/06', '111-22-333333-4-6');
INSERT INTO BOOK VALUES (103, '소나기', '황순원', 15000, '20/07/07', '111-22-333333-4-7');


COMMIT
