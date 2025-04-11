-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 마일리지등급;

CREATE TABLE mileage_grades (
  grade CHAR(1) PRIMARY KEY,
  mileage_min INT,
  mileage_max INT
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 마일리지등급 TO mileage_grades;

ALTER TABLE mileage_grades CHANGE 등급명 grade CHAR(1);
ALTER TABLE mileage_grades CHANGE 하한마일리지 mileage_min INT;
ALTER TABLE mileage_grades CHANGE 상한마일리지 mileage_max INT;