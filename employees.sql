-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 사원;

CREATE TABLE employees (
  emp_id CHAR(3) PRIMARY KEY,
  name VARCHAR(20),
  eng_name VARCHAR(20),
  position VARCHAR(10),
  gender CHAR(2),
  birth DATE,
  hire_date DATE,
  address VARCHAR(50),
  city VARCHAR(20),
  region VARCHAR(20),
  home_phone VARCHAR(20),
  manager_id CHAR(3),
  dept_id CHAR(2)
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경

RENAME TABLE 사원 TO employees;

ALTER TABLE employees CHANGE 사원번호 emp_id CHAR(3);
ALTER TABLE employees CHANGE 이름 name VARCHAR(20);
ALTER TABLE employees CHANGE 영문이름 eng_name VARCHAR(20);
ALTER TABLE employees CHANGE 직위 position VARCHAR(10);
ALTER TABLE employees CHANGE 성별 gender CHAR(2);
ALTER TABLE employees CHANGE 생일 birth DATE;
ALTER TABLE employees CHANGE 입사일 hire_date DATE;
ALTER TABLE employees CHANGE 주소 address VARCHAR(50);
ALTER TABLE employees CHANGE 도시 city VARCHAR(20);
ALTER TABLE employees CHANGE 지역 region VARCHAR(20);
ALTER TABLE employees CHANGE 집전화 home_phone VARCHAR(20);
ALTER TABLE employees CHANGE 상사번호 manager_id CHAR(3);
ALTER TABLE employees CHANGE 부서번호 dept_id CHAR(2);