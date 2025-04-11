-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 제품;

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  package VARCHAR(30),
  unit_price INT,
  stock INT
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 제품 TO products;

ALTER TABLE products CHANGE 제품번호 product_id INT;
ALTER TABLE products CHANGE 제품명 product_name VARCHAR(50);
ALTER TABLE products CHANGE 포장단위 package VARCHAR(30);
ALTER TABLE products CHANGE 단가 unit_price INT;
ALTER TABLE products CHANGE 재고 stock INT;