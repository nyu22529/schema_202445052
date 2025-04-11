-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 부서;

CREATE TABLE departments (
  dept_id CHAR(2) PRIMARY KEY,
  dept_name VARCHAR(20)
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 부서 TO departments;

ALTER TABLE departments CHANGE 부서번호 dept_id CHAR(2);
ALTER TABLE departments CHANGE 부서명 dept_name VARCHAR(20);