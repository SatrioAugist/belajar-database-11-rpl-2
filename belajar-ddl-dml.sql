1.    show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+


2. CREATE DATABASE sekolah2;


3.  USE sekolah2;

4.  CREATE TABLE siswa(
    -> nis char(8)primary key,
    -> nama varchar(100),
    -> jk char(1),
    -> tempat_lahir varchar(50),
    -> tanggal_lahir date,
    -> alamat text,
    -> kelas varchar(10),
    -> nilai float,
    -> jomblo boolean);

5.    SHOW TABLES;
+--------------------+
| Tables_in_sekolah2 |
+--------------------+
| siswa              |
+--------------------+


6.  desc siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(8)      | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jk            | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
| jomblo        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
    
7.  INSERT INTO siswa VALUES(
    -> "12100707",
    -> "Satrio Augistiawan",
    -> "L",
    -> "Subang",
    -> "2005-08-04",
    -> "Ciloa",
    -> "11-RPL-2",
    -> "90,99",
    -> "0");

8.   INSERT INTO siswa VALUES(
    -> "12100808",
    -> "Surtijem Minto",
    -> "P",
    -> "Jongol",
    -> "2012-09-02",
    -> "Cihurip",
    -> "11-RPL-2",
    -> "78.78",
    -> "1");

9.    INSERT INTO siwa VALUES(
    -> "12100018",
    -> "ADNAN MAULANA",
    -> "L",
    -> "SUBANG",
    -> "2005-08-17",
    -> "CIGADUNG",
    -> "11-RPL-2",
    -> "81.32",
    -> "1");
    
10.   UPDATE siswa SET tempat_lahir="Bandung" WHERE nis = "12100018";
11.   UPDATE siswa SET nama="Adnan Maulana" WHERE nis = "12100018";

12.   DELETE FROM siswa WHERE nis="12100018";

13.   SELECT *FROM siswa;
+----------+--------------------+------+--------------+---------------+--------------+----------+-------+--------+
| nis      | nama               | jk   | tempat_lahir | tanggal_lahir | alamat       | kelas    | nilai | jomblo |
+----------+--------------------+------+--------------+---------------+--------------+----------+-------+--------+
| 12100000 | Kokom Muslimah     | P    | Jokorto      | 2022-08-12    | Yagyakarta   | 11-RPL-2 |  30.9 |      1 |
| 12100060 | Andi Ahmad Yusup   | L    | Subang       | 2018-01-17    | Curugrendeng | 11-RPL-2 |  -100 |      1 |
| 12100707 | Satrio Augistiawan | L    | Subang       | 2005-08-04    | Ciloa        | 11-RPL-2 |    90 |      0 |
| 12100808 | Surtijem Minto     | P    | Jongol       | 2012-09-02    | Cihurip      | 11-RPL-2 | 78.78 |      1 |
+----------+--------------------+------+--------------+---------------+--------------+----------+-------+--------+