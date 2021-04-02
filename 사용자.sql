-- ���ο� ������� �߰�
-- CREATE USER ����ڸ� IDENTIFIED BY ���;
CREATE USER JAMES IDENTIFIED BY 1111;

-- ���� �ο��ϱ�
-- GRANT ����, ���� TO ����ڸ�;
-- CONNECT ����: ���� ����
-- RESOURCE ����: ���ҽ� ��� ����
-- DBA ����: ������ ����
GRANT DBA TO JAMES;

-- ���ο� ���̺�(ǥ) �����
-- CREATE TABLE ���̺�� (Į���� Į��Ÿ�� ��������, ...);

-- �л� ���̺�
-- Į��: �й�, �̸�, ����, ����ó, �ּ�, ����

-- ��������
-- �⺻Ű(PRIMARY KEY): �ĺ���(�ߺ��� ����, �� ���� ����.) 
-- ex)�ֹε�Ϲ�ȣ, �й�, ����, ��ǰ��ȣ ��
-- �ǹ������� ȸ����ȣ, ���̵� �� ȸ����ȣ�� ���� ����.
-- �� �� ����: NULL / NOT NULL
-- �ߺ� �� ����: UNIQUE
-- �й��� ���������� ���ڿ��� ó���� -> ����: ���� ó����
-- �ѱ��� �� ���ڰ� 2����Ʈ�� 6, 3����Ʈ�� 9...

CREATE TABLE STUDENT
(
    STUDENT_NO VARCHAR2(5) PRIMARY KEY,
    NAME VARCHAR2(9) NOT NULL,
    AGE NUMBER NOT NULL,
    CONTACT VARCHAR2(20) NULL,
    ADDRESS VARCHAR2(100) NULL,
    BIRTHDAY DATE -- NULL ó���� ���ϸ� �⺻������ NULL �����Դϴ�.
);

-- CRUD
-- C: CREATE, INSERT
-- R: READ,   SELECT
-- U: UPDATE, UPDATE
-- D: DELETE, DELETE

-- INSERT��
-- INSERT INTO ���̺�� (Į��1, Į��2, ...) VALUES (��1, ��2, ...);
-- INSERT INTO ���̺�� VALUES (��1, ��2, ...); ��� Į���� ���� �ִ� ���
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10101', '���ӽ�', 8, NULL, NULL, '2014-05-05');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10102', '������', 8, '010-1111-1111', '����', '2014-06-06');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10103', '���̽�', 8, '010-2222-2222', NULL, '2014-07-07');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10104', '����', 8, NULL, '��õ', '2014-08-08');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES('10105', '��Ÿ��', 8, NULL, '���', '2014-09-09');


-- SELECT��
-- SELECT Į��1, Į��2, ... FROM ���̺��;
-- SELECT Į��1, Į��2, ... FROM ���̺�� WHERE ���ǽ�;
SELECT STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY FROM STUDENT;
SELECT STUDENT_NO, NAME FROM STUDENT;

SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NULL;
SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NOT NULL;
SELECT STUDENT_NO, NAME, ADDRESS FROM STUDENT WHERE ADDRESS = '����';

-- UPDATE��
-- UPDATE ���̺�� SET ������ ����;
-- UPDATE ���̺�� SET ������ ���� WHERE ���ǽ�;
UPDATE STUDENT SET AGE = AGE + 1;
UPDATE STUDENT SET CONTACT = '010-3333-3333', ADDRESS = '����' WHERE NAME = '���ӽ�'; -- �� ����. ���ӽ��� ���� ���� �����ϹǷ�.
UPDATE STUDENT SET CONTACT = '010-3333-3333', ADDRESS = '����' WHERE STUDENT_NO = '10101';

-- DELETE��
-- DELETE FROM ���̺��; ��ü ������ ����
-- DELETE FROM ���̺�� WHERE ���ǽ�;
DELETE FROM STUDENT WHERE STUDENT_NO = '10102';

-- COMMIT�� ROLLBACK
-- Ʈ�����(TRANSACTION): � �۾��� �ǹ��Ѵ�. ���� ���� �۾����� ������ �� �� �ִ�.
-- ��: ���� ��ü(�� ���忡�� ��� + ��� ���忡 �Ա�)
-- Ʈ������� �ݵ�� ���ڼ��� Ư���� ������. (ALL or NOTHING)
-- COMMIT: Ʈ������� ������ ��� �۾��� DB�� �ݿ��Ѵ�.
-- ROLLBACK: Ʈ������� ������ ��� ��� �۾��� ����Ѵ�.

-- Ʈ������� ���: INSERT, UPDATE, DELETE
