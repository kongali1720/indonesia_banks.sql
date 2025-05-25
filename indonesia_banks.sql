-- indonesia_banks.sql
-- Database dan tabel untuk menyimpan nama-nama bank di Indonesia

CREATE DATABASE IF NOT EXISTS indonesian_banks;
USE indonesian_banks;

DROP TABLE IF EXISTS banks;

CREATE TABLE banks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(20),
    type VARCHAR(50),
    status VARCHAR(50)
);

-- Insert nama bank resmi beroperasi di Indonesia (contoh data)
INSERT INTO banks (name, code, type, status) VALUES
('Bank Central Asia (BCA)', '014', 'Private Commercial', 'Active'),
('Bank Mandiri', '008', 'State-Owned', 'Active'),
('Bank Rakyat Indonesia (BRI)', '002', 'State-Owned', 'Active'),
('Bank Negara Indonesia (BNI)', '009', 'State-Owned', 'Active'),
('Bank Danamon', '011', 'Private Commercial', 'Active'),
('CIMB Niaga', '022', 'Private Commercial', 'Active'),
('Bank Permata', '013', 'Private Commercial', 'Active'),
('Bank Syariah Indonesia', '451', 'State-Owned', 'Active'),
('Bank Muamalat', '147', 'Private Syariah', 'Active'),
('Bank Bukopin', '441', 'Private Commercial', 'Active'),
('Bank Jabar Banten (BJB)', '110', 'Regional', 'Active'),
('Bank DKI', '111', 'Regional', 'Active'),
('Bank Nagari', '112', 'Regional', 'Active'),
('Bank Sulselbar', '113', 'Regional', 'Active'),
('Bank Sumut', '114', 'Regional', 'Active'),
('Bank Riau Kepri', '115', 'Regional', 'Active'),
('Bank Jateng', '118', 'Regional', 'Active'),
('Bank Jatim', '120', 'Regional', 'Active'),
('Bank Kalsel', '121', 'Regional', 'Active'),
('Bank Kaltimtara', '122', 'Regional', 'Active');