-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 주문세부;

CREATE TABLE order_details (
  order_id CHAR(5),
  product_id INT,
  unit_price INT,
  quantity INT,
  discount FLOAT,
  PRIMARY KEY(order_id, product_id)
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 주문세부 TO order_details;

ALTER TABLE order_details CHANGE 주문번호 order_id CHAR(5);
ALTER TABLE order_details CHANGE 제품번호 product_id INT;
ALTER TABLE order_details CHANGE 단가 unit_price INT;
ALTER TABLE order_details CHANGE 주문수량 quantity INT;
ALTER TABLE order_details CHANGE 할인율 discount FLOAT;