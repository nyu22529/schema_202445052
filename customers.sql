-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 고객;

CREATE TABLE customers (
  customer_id CHAR(5) PRIMARY KEY,
  company_name VARCHAR(30),
  contact_name VARCHAR(20),
  contact_position VARCHAR(20),
  address VARCHAR(50),
  city VARCHAR(20),
  region VARCHAR(20),
  phone VARCHAR(20),
  mileage INT
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 고객 TO customers;

ALTER TABLE customers CHANGE 고객번호 customer_id CHAR(5);
ALTER TABLE customers CHANGE 고객회사명 company_name VARCHAR(30);
ALTER TABLE customers CHANGE 담당자명 contact_name VARCHAR(20);
ALTER TABLE customers CHANGE 담당자직위 contact_position VARCHAR(20);
ALTER TABLE customers CHANGE 주소 address VARCHAR(50);
ALTER TABLE customers CHANGE 도시 city VARCHAR(20);
ALTER TABLE customers CHANGE 지역 region VARCHAR(20);
ALTER TABLE customers CHANGE 전화번호 phone VARCHAR(20);
ALTER TABLE customers CHANGE 마일리지 mileage INT;