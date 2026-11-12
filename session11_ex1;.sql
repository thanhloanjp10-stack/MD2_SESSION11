CREATE DATABASE IF NOT EXISTS session11_ex1;
USE session11_ex1;
-- Tạo bảng accounts 
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    balance DECIMAL(15, 2) 
);

--  thêm 10 tài khoản vào trong bảng .
INSERT INTO accounts (customer_name, balance) 
VALUES ('Nguyễn Văn Mão', 30000),
('Nguyễn Văn An', 0),
('Nguyễn Văn Tam', 2000000),
('Nguyễn Văn Tứ', 0),
('Nguyễn Văn Ngũ', 3000000),
('Nguyễn Văn Tèo', 4000000),
('Nguyễn Văn Tý', 6000000),
('Nguyễn Văn Sửu', 7000000),
('Nguyễn Văn Tỵ', 8000000),
('Nguyễn Văn Dần', 9000000)
;

-- Bắt đầu transaction
-- Cộng thêm 1.000.000 VNĐ vào tài khoản có account_id = 1
select balance from accounts where account_id = 1;
START TRANSACTION ;
UPDATE accounts 
SET balance = balance + 1000000 WHERE account_id =1;
select balance from  accounts where account_id =1;

-- Nếu không có lỗi, lưu thay đổi bằng COMMIT
COMMIT;

-- Kiểm tra số dư trước và sau khi giao dịch
SELECT * FROM accounts ;
