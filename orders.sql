-- 방법 1: 기존 테이블 삭제 후 새로 생성
DROP TABLE IF EXISTS 주문;

CREATE TABLE orders (
  order_id CHAR(5) PRIMARY KEY,
  customer_id CHAR(5),
  emp_id CHAR(3),
  order_date DATE,
  request_date DATE,
  ship_date DATE
) DEFAULT CHARSET=utf8mb4;

-- 방법 2: 기존 테이블 이름과 컬럼 이름 변경
RENAME TABLE 주문 TO orders;

ALTER TABLE orders CHANGE 주문번호 order_id CHAR(5);
ALTER TABLE orders CHANGE 고객번호 customer_id CHAR(5);
ALTER TABLE orders CHANGE 사원번호 emp_id CHAR(3);
ALTER TABLE orders CHANGE 주문일 order_date DATE;
ALTER TABLE orders CHANGE 요청일 request_date DATE;
ALTER TABLE orders CHANGE 발송일 ship_date DATE;