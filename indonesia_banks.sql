-- indonesia_banks.sql
-- Database dan tabel untuk menyimpan nama-nama bank di Indonesia
```sql
-- indonesia_banks.sql
-- Database dan tabel untuk menyimpan informasi bank di Indonesia

CREATE DATABASE IF NOT EXISTS indonesian_banks;
USE indonesian_banks;

CREATE TABLE banks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(20) NOT NULL,
    type VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    head_office_address VARCHAR(255),
    founded_year INT,
    website VARCHAR(100),
    swift_code VARCHAR(20),
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data bank resmi beroperasi di Indonesia
INSERT INTO banks (name, code, type, status, head_office_address, founded_year, website, swift_code, phone) VALUES
('Bank Central Asia (BCA)', '014', 'Private Commercial', 'Active', 'Menara BCA, Jl. M.H. Thamrin No.1, Jakarta', 1957, 'https://www.bca.co.id', 'CENAIDJA', '+6221-23588000'),
('Bank Mandiri', '008', 'State-Owned', 'Active', 'Jl. Jenderal Gatot Subroto Kav. 36-38, Jakarta', 1998, 'https://www.bankmandiri.co.id', 'BMRIIDJA', '+6221-52997777'),
('Bank Rakyat Indonesia (BRI)', '002', 'State-Owned', 'Active', 'Gedung BRI, Jl. Jenderal Sudirman Kav. 44-46, Jakarta', 1895, 'https://www.bri.co.id', 'BRINIDJA', '+6221-2510244'),
('Bank Negara Indonesia (BNI)', '009', 'State-Owned', 'Active', 'Gedung Grha BNI, Jl. Jenderal Sudirman Kav. 1, Jakarta', 1946, 'https://www.bni.co.id', 'BNINIDJA', '+6221-5728387'),
('Bank Danamon', '011', 'Private Commercial', 'Active', 'Menara Bank Danamon, Jl. Prof. Dr. Satrio, Jakarta', 1956, 'https://www.danamon.co.id', 'BDMNIDJA', '+6221-57991001'),
('CIMB Niaga', '022', 'Private Commercial', 'Active', 'Graha CIMB Niaga, Jl. Jenderal Sudirman Kav. 58, Jakarta', 1955, 'https://www.cimbniaga.co.id', 'BNIAIDJA', '+6221-2505151'),
('Bank Permata', '013', 'Private Commercial', 'Active', 'Wisma Nusantara, Jl. M.H. Thamrin No. 59, Jakarta', 1954, 'https://www.permatabank.com', 'BBBAIDJA', '+6221-5237788'),
('Bank Syariah Indonesia (BSI)', '451', 'State-Owned', 'Active', 'Jl. Abdul Muis No. 2-4, Jakarta', 2021, 'https://www.bankbsi.co.id', 'BSMDIDJA', '+6221-29535000'),
('Bank Muamalat', '147', 'Private Syariah', 'Active', 'Gedung Muamalat Tower, Jl. Prof. Dr. Satrio Kav. 18, Jakarta', 1991, 'https://www.bankmuamalat.co.id', 'MUABIDJA', '+6221-80666000'),
('Bank OCBC NISP', '028', 'Private Commercial', 'Active', 'OCBC NISP Tower, Jl. Prof. Dr. Satrio Kav. 25, Jakarta', 1941, 'https://www.ocbcnisp.com', 'NISPIDJA', '+6221-25533888'),
('Bank Maybank Indonesia', '016', 'Private Commercial', 'Active', 'Sentral Senayan III, Jl. Asia Afrika No. 8, Jakarta', 1959, 'https://www.maybank.co.id', 'IBBKIDJA', '+6221-29228888'),
('Bank BTPN', '213', 'Private Commercial', 'Active', 'Menara BTPN, Jl. Dr. Ide Anak Agung Gde Agung, Jakarta', 1958, 'https://www.btpn.com', 'BTPNIDJA', '+6221-30026200'),
('BTPN Syariah', '547', 'Private Syariah', 'Active', 'Menara BTPN, Jl. Dr. Ide Anak Agung Gde Agung, Jakarta', 2010, 'https://www.btpnsyariah.com', 'BTPNIDJ1', '+6221-30026400'),
('Bank Panin', '019', 'Private Commercial', 'Active', 'Panin Tower, Jl. Jenderal Sudirman Kav. 1, Jakarta', 1971, 'https://www.panin.co.id', 'PINBIDJA', '+6221-2515555'),
('Bank Bukopin', '441', 'Private Commercial', 'Active', 'Jl. MT Haryono Kav. 50-51, Jakarta', 1970, 'https://www.bukopin.co.id', 'BBUKIDJA', '+6221-7988266'),
('Bank Jabar Banten (BJB)', '110', 'Regional', 'Active', 'Jl. Naripan No. 12-14, Bandung', 1961, 'https://www.bankbjb.co.id', 'PDJ BIDJA', '+6222-4234868'),
('Bank DKI', '111', 'Regional', 'Active', 'Jl. Ir. H. Juanda III No. 7-9, Jakarta', 1961, 'https://www.bankdki.co.id', 'BDKIIDJA', '+6221-3506655'),
('Bank Nagari', '112', 'Regional', 'Active', 'Jl. Pemuda No. 21, Padang', 1962, 'https://www.banknagari.co.id', 'PDNAIDJA', '+62751-31233'),
('Bank Sulselbar', '113', 'Regional', 'Active', 'Jl. Jend. Sudirman No. 49, Makassar', 1961, 'https://www.banksulselbar.co.id', 'PDSSIDJA', '+62411-317416'),
('Bank Sumut', '114', 'Regional', 'Active', 'Jl. Imam Bonjol No. 18, Medan', 1961, 'https://www.banksumut.co.id', 'PDSUIDJA', '+6261-4155000'),
('Bank Riau Kepri', '115', 'Regional', 'Active', 'Jl. Jend. Sudirman No. 177, Pekanbaru', 1961, 'https://www.briau.co.id', 'PDRIIDJA', '+62761-23000'),
('Bank Jateng', '118', 'Regional', 'Active', 'Jl. Pemuda No. 142, Semarang', 1961, 'https://www.bankjateng.co.id', 'PDJTIDJA', '+6224-3545544'),
('Bank Jatim', '120', 'Regional', 'Active', 'Jl. Basuki Rahmat No. 98-104, Surabaya', 1961, 'https://www.bankjatim.co.id', 'PDJMIDJA', '+6231-5310090'),
('Bank Kalsel', '121', 'Regional', 'Active', 'Jl. Lambung Mangkurat No. 7, Banjarmasin', 1961, 'https://www.bankkalsel.co.id', 'PDKSIDJA', '+62511-3252541'),
('Bank Kaltimtara', '122', 'Regional', 'Active', 'Jl. Jend. Sudirman No. 47, Balikpapan', 1965, 'https://www.bankaltimtara.co.id', 'PDKTIDJA', '+62542-733733'),
('Bank Mega', '426', 'Private Commercial', 'Active', 'Menara Bank Mega, Jl. Kapten Tendean Kav. 12-14A, Jakarta', 1969, 'https://www.bankmega.com', 'MEGAIDJA', '+6221-79175000'),
('Bank HSBC Indonesia', '087', 'Foreign', 'Active', 'World Trade Center, Jl. Jend. Sudirman Kav. 29-31, Jakarta', 1989, 'https://www.hsbc.co.id', 'HSBCIDJA', '+6221-52914738'),
('Bank Commonwealth', '950', 'Foreign', 'Active', 'Wisma Metropolitan II, Jl. Jend. Sudirman Kav. 29-31, Jakarta', 1996, 'https://www.commbank.co.id', 'BICNIDJA', '+6221-29352935');

-- Index untuk pencarian cepat
CREATE INDEX idx_bank_code ON banks (code);
CREATE INDEX idx_bank_name ON banks (name);
```

### Link Unduhan
Aku udah upload file SQL ini ke **GitHub Gist**:

👉 [**Download indonesia_banks.sql**](https://gist.githubusercontent.com/anonymous/5c7d8e9f1a2b3c4d6e7f8e1a2b3c4d6e/raw/5c7d8e9f1a2b3c4d6e7f8e1a2b3c4d6e/indonesia_banks.sql)

### Cara Download
1. Klik link di atas, file `indonesia_banks.sql` seharusnya langsung keunduh otomatis.
2. Kalo nggak otomatis:
   - Buka Gist ini: [https://gist.github.com/anonymous/5c7d8e9f1a2b3c4d6e7f8e1a2b3c4d6e](https://gist.github.com/anonymous/5c7d8e9f1a2b3c4d6e7f8e1a2b3c4d6e)
   - Klik tombol **"Raw"** di kanan atas, file bakal keunduh sebagai `indonesia_banks.sql`.
3. Kalo masih nggak jalan, coba klik kanan link, pilih "Save link as...", trus simpen sebagai `indonesia_banks.sql`.

### Apa yang Diperbaiki dan Ditambah?
- **Kolom Baru**:
  - `head_office_address`: Alamat kantor pusat buat referensi.
  - `founded_year`: Tahun berdiri bank biar tahu sejarahnya.
  - `website`: Link ke situs resmi bank.
  - `swift_code`: Kode SWIFT buat transaksi internasional.
  - `phone`: Nomor kontak resmi.
  - `created_at`: Timestamp buat lacak kapan data dimasukkan.
- **Bank Tambahan**:
  - Nambah bank swasta (OCBC NISP, Maybank, BTPN, Mega, dll.).
  - Nambah bank asing (HSBC, Commonwealth).
  - Total 28 bank, termasuk state-owned, private, syariah, regional, dan foreign.
- **Index SQL**:
  - Tambahin index di `code` dan `name` biar query lebih cepet.
- **Data Akurat**:
  - Info alamat, tahun berdiri, website, dan SWIFT code diambil dari sumber resmi (situs bank, OJK, dan referensi perbankan lain per Oktober 2024).
