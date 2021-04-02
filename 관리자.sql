-- ���ο� ������� �߰�
-- CREATE USER ����ڸ� IDENTIFIED BY ���;
CREATE USER JAMES IDENTIFIED BY 1111;

-- ���� �ο��ϱ�
-- GRANT ����, ���� TO ����ڸ�;
-- CONNECT ����: ���� ����
-- RESOURCE ����: ���ҽ� ��� ����
-- DBA ����: ������ ����
GRANT DBA TO JAMES;

-- ���� �����ϱ�
-- REVOKE ���� FROM ����ڸ�;
REVOKE DBA FROM JAMES;

-- ����� �����ϱ�
-- DROP USER ����ڸ�;
-- DROP USER ����ڸ� CASCADE; ����ڰ� �����͸� ������ �ִ� ���
DROP USER JAMES CASCADE;

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
